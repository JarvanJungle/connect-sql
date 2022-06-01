-- Run on 'entity' database, generate temp table data for later processing
CREATE TEMPORARY TABLE TEMP_pending_single_groups(
                                                     group_name varchar(50),
                                                     group_description varchar(500),
                                                     company_uuid varchar(50),
                                                     uuid varchar(50),
                                                     user_uuid varchar(50),
                                                     user_name varchar(100),
                                                     created_on timestamp with time zone
);

-- Run on 'oauth' database, generate temp table data insertion for later processing
WITH ALL_SINGLE_USER_GROUP AS (
    select concat(u.name, ' [', u.email, ']')                         as group_name,
           concat('Single User Group - ', u.name, ' [', u.email, ']') as group_description,
           c.uuid                                                     as company_uuid,
           u.uuid                                                     as user_uuid,
           u.name                                                     as user_name,
           uuid_generate_v4()                                         as uuid,
           now()                                                      as created_on
    from user_companies uc
             inner join companies c on c.id = uc.companies_id
             inner join users u on u.id = uc.user_id)
select 'INSERT INTO TEMP_pending_single_groups(group_name, group_description, company_uuid, user_uuid, user_name, uuid, created_on) VALUES ('''
           || group_name || ''', '''
           || group_description || ''', '''
           || company_uuid || ''', '''
           || user_uuid || ''', '''
           || user_name || ''', '''
           || uuid || ''', '''
           || now() || ''');'
from ALL_SINGLE_USER_GROUP;

/**
  Proceed to run all sql script generated above on 'entity' database
 */

-- 'entity' Database: Remove all existing pair
delete
from TEMP_pending_single_groups
where group_name in (select group_name from groups)
  and company_uuid in (select company_uuid from groups);

-- 'entity' Database: Create Groups;
insert into groups (group_name, group_description, company_uuid, uuid, created_on, is_single_user)
select group_name, group_description, company_uuid, uuid, created_on, true
from TEMP_pending_single_groups;

-- 'entity' Database: Create GroupUsers;
insert into group_users(group_id, user_uuid, name)
select g.id, temp_sug.user_uuid, temp_sug.user_name
from groups g
         inner join TEMP_pending_single_groups temp_sug on g.uuid = temp_sug.uuid;