insert into authority.modules (uuid, module_name, module_code) values (uuid_generate_v4(), 'Developer Module', 'DEVELOPER_MODULE');
insert into authority.features (uuid, module_code, feature_name, feature_code, category, profile, sub_category)
values (uuid_generate_v4(), 'DEVELOPER_MODULE', 'Developer Work Request','dwr','Requisitions', 'USER', 'Requisitions'),
       (uuid_generate_v4(), 'DEVELOPER_MODULE', 'Developer Work Order','dwo','Orders', 'USER', 'Orders List');