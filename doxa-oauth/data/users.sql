-- populate Oauth2 client
INSERT INTO public.registered_client (identifier, client_id, client_secret, confidential, access_token_format, created_at, redirect_uris, cors_uris, grant_types) VALUES ('00fe6926-6523-444c-850d-beba24d30da0', '6a9b4a56-a375-4343-aa69-b78fc93bd3fe', '$2a$10$3yYjQta38ky0BmQtlvACFeN3ocbZ/zdMNDP1t9cin5F5LA2au1W/i', true, 'JWT', '2021-05-21', 'https://connex-stag.doxa-holdings.com/sso_redirect,https://google.com,http://localhost:4100/sso_redirect', null, 'authorization_code,client_credentials');

-- Populate data
INSERT INTO public.language (language_name, language_code) VALUES ('English', 'en');
INSERT INTO public.entities (id, entity_registration_no, uuid) VALUES (0, '123123', 'b41903c6-00bd-48b1-a9aa-32231a11c47c');
INSERT INTO public.companies (id, entity_name, gst_no, is_active, created_at, updated_at, entity_registration_no, entity_type, industry_type, is_gst_applicable, country, onboarding_status, uuid, entity_id, is_main) VALUES (0, 'Doxa Holdings', '123123', true, '2021-03-24', '2021-03-24','123123', 'PRIVATE LIMITED', 'OTHER SERVICE ACTIVITIES', true, 'Singapore', 'APPROVED', '00000', 0, true);

INSERT INTO public.companies (entity_name, gst_no, is_active, created_at, updated_at, entity_registration_no, entity_type, industry_type, is_gst_applicable, country, onboarding_status, uuid, entity_id, is_main) VALUES ('Company1', '11111', true, '2021-03-24', '2021-03-24','123123', 'PRIVATE LIMITED', 'CONSTRUCTION', true, 'Singapore', 'APPROVED', '129618fe-4bfb-4c79-b4db-44787bd3cb1f', (select id from entities where entity_registration_no = '123123'), true);
INSERT INTO public.companies (entity_name, gst_no, is_active, created_at, updated_at, entity_registration_no, entity_type, industry_type, is_gst_applicable, country, onboarding_status, uuid, entity_id, is_main) VALUES ('Company2', '22222', true, '2021-03-24', '2021-03-24','223223', 'PRIVATE LIMITED', 'CONSTRUCTION', true, 'Singapore', 'APPROVED', '95b5cf62-2f9f-4eaf-9d52-39e23dd020b8', (select id from entities where entity_registration_no = '123123'), false);
INSERT INTO public.companies (entity_name, gst_no, is_active, created_at, updated_at, entity_registration_no, entity_type, industry_type, is_gst_applicable, country, onboarding_status, uuid, entity_id, is_main) VALUES ('Company3', '33333', true, '2021-03-24', '2021-03-24','333333', 'PRIVATE LIMITED', 'CONSTRUCTION', true, 'Singapore', 'APPROVED', '7d046c40-d75d-40d3-afa7-13168eb13ae4', (select id from entities where entity_registration_no = '123123'), false);

-- Populate data for role
INSERT INTO public.roles (role_name, role_code) VALUES ('Doxa Admin', 'DOXA_ADMIN');
INSERT INTO public.roles (role_name, role_code) VALUES ('Doxa Entity', 'ENTITY_ADMIN');
INSERT INTO public.roles (role_name, role_code) VALUES ('Doxa User', 'ENTITY_USER');
INSERT INTO public.roles (role_name, role_code) VALUES ('Doxa Company', 'COMPANY_ADMIN');

DO $$
    DECLARE doxaadmin_id bigint;
    DECLARE doxaadmin_role_id bigint;
    DECLARE entityadmin_role_id bigint;
    DECLARE entityadmin_id bigint;
    DECLARE language_id bigint;
    DECLARE comp1 bigint;
    DECLARE comp2 bigint;
    DECLARE entity bigint;
    DECLARE companies_id_1 bigint;
    DECLARE companies_id_2 bigint;
BEGIN
        language_id := (select id from language where language_code = 'en');
INSERT INTO public.users (email, name, password_salt, hashed_password, is_active, is_deleted, entity_id, created_at, updated_at, designation, work_number, uuid) VALUES ('doxaadmin2@getnada.com', 'Doxa Admin', null, '$2a$10$D62qeTGT6ZeRDUW6EQDT2.l185RncJ5an1D/3w3UyCxaHOkdTfJTi', true, false, 0, '2021-03-24', '2021-03-24', 'admin staff', '85858585', 'd3bd4e11-0033-4198-aa18-22287389b9e5')
    returning id into doxaadmin_id;
doxaadmin_role_id := (select id from roles where role_code = 'DOXA_ADMIN');
        language_id := (select id from language where language_code = 'en');
INSERT INTO public.user_companies (id, user_id, companies_id, user_companies_uuid) VALUES (0, doxaadmin_id, 0, '3929650a-1e6c-4d87-a313-0c49cb2b88cc');
INSERT INTO public.user_roles (role_id, user_companies_id) VALUES (doxaadmin_role_id, 0);
INSERT INTO public.user_settings (is_2fa, language, user_id, must_set_password, two_fa_secret) VALUES (false, language_id, doxaadmin_id, false, 'VXEEZDT24IZS27WB6ZALO7XA7AFI5JM5');

entity := (select id from entities where entity_registration_no = '123123');
INSERT INTO public.users (email, name, password_salt, hashed_password, is_active, is_deleted, entity_id, created_at, updated_at, designation, work_number, uuid) VALUES ('entityadmin@getnada.com', 'Entity Admin', null, '$2a$10$D62qeTGT6ZeRDUW6EQDT2.l185RncJ5an1D/3w3UyCxaHOkdTfJTi', true, false, entity, '2021-03-24', '2021-03-24', 'manager', '98989898', 'e5ff2cf2-22d4-4544-8a92-c61128b7e5d6')
 returning id into entityadmin_id;
comp1 := (select id from companies where gst_no = '11111');
comp2 := (select id from companies where gst_no = '22222');
INSERT INTO public.user_companies (user_id, companies_id, user_companies_uuid) VALUES (entityadmin_id, comp1, 'd189cc85-a7f8-4f2b-a96f-7c779d68a02a') returning id into companies_id_1;
INSERT INTO public.user_companies (user_id, companies_id, user_companies_uuid) VALUES (entityadmin_id, comp2, 'd8472c52-f3f8-4972-b8e8-5471e2c1c2a2') returning id into companies_id_2;
entityadmin_role_id := (select id from roles where role_code = 'ENTITY_ADMIN');
INSERT INTO public.user_roles (role_id, user_companies_id) VALUES (entityadmin_role_id, companies_id_1);
INSERT INTO public.user_roles (role_id, user_companies_id) VALUES (entityadmin_role_id, companies_id_2);
INSERT INTO public.user_settings (is_2fa, language, user_id, must_set_password, two_fa_secret) VALUES (false, language_id, entityadmin_id, false, 'VXEEZDT24IZS27WB6ZALO7XA7AFI5JM5');

END $$;