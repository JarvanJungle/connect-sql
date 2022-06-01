CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
INSERT INTO public.prefix_configurable_functions (function_name, function_code, default_prefix,
                                                  default_number_of_digits, is_buyer_portal)
VALUES ('Credit Note', 'CN', 'CN', 9, false);

WITH NON_CN_PREFIX_COMP AS (
    select distinct company_uuid, created_by, created_by_uuid, creator_designation
    from prefix_setup
    where company_uuid not in
          (select company_uuid from prefix_setup where prefix_configurable_function_id = :prefix_configurable_id)
)
insert into prefix_setup(prefix_configurable_function_id, type, prefix_sample_output, created_by_uuid, prefix,
                  is_project_code, is_date_dynamic, has_configure_before, date_dynamic_prefix, number_of_digits,
                  starting_number, company_uuid, default_current_number, uuid, created_by, creator_designation)
select :prefix_configurable_id             as prefix_configurable_function_id,
       'Default'      as type,
       'CN-000000001' as prefix_sample_output,
       created_by_uuid,
       null           as prefix,
       false          as is_project_code,
       false          as is_date_dynamic,
       false          as has_configure_before,
       null           as date_dynamic_prefix,
       -1             as number_of_digits,
       1              as starting_number,
       company_uuid,
       1              as default_current_number,
       uuid_generate_v4(),
       created_by,
       creator_designation
from NON_CN_PREFIX_COMP;