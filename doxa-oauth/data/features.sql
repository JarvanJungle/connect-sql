--
-- PostgreSQL database dump
--
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Dumped from database version 12.5
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: modules; Type: TABLE DATA; Schema: authority; Owner: doxaadmin
--

INSERT INTO authority.modules (id, uuid, module_name, module_code) VALUES (1, 'd0b214a6-e747-460c-bf7e-65b63e939b91', 'Procurement To Pay', 'P2P');
INSERT INTO authority.modules (id, uuid, module_name, module_code) VALUES (2, '4d34c063-6634-43b0-953b-ebcfc1f74602', 'Payment & Financing', 'P&F');
INSERT INTO authority.modules (id, uuid, module_name, module_code) VALUES (3, '008e9c00-5920-467e-8a18-ae557127fbbc', 'Progressive Claim', 'PC');
INSERT INTO authority.modules (id, uuid, module_name, module_code) VALUES (4, '235244ff-1100-4c81-92e7-d778686e44ea', 'Entity Settings', 'ENTITY_SETTING');
INSERT INTO authority.modules (id, uuid, module_name, module_code) VALUES (5, 'fd1a3ea3-8e26-4fc2-a6f6-a2939444151e', 'Transaction Settings', 'TRANSACTION_SETTING');
INSERT INTO authority.modules (id, uuid, module_name, module_code) VALUES (6, 'cdaf9a44-c355-47e5-a827-d0a2577d3f03', 'Manage Vendor', 'MANAGE_VENDOR');


--
-- Data for Name: features; Type: TABLE DATA; Schema: authority; Owner: doxaadmin
--

INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (35, '5c2d67e9-2842-4729-a1a5-78fb3360a4be', 'TRANSACTION_SETTING', 'Manage Payment Term', 'paymentTerm', 'System Configurations', 'ADMIN', 'Payment Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (32, 'ff75ff50-88e1-4f4c-923a-6893ca6b3148', 'TRANSACTION_SETTING', 'Manage Company Users', 'cpUser', 'Entity Management', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (23, 'c700cf5d-0fb2-41df-a845-396e2ace53ca', 'TRANSACTION_SETTING', 'Manage G/L Accounts', 'gl', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (14, '9c9391c8-446d-49ea-8afb-3ed41212c238', 'ENTITY_SETTING', 'Manage Address', 'address', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (15, '163d3364-273a-44e9-a3ca-0984f301f127', 'ENTITY_SETTING', 'Manage Bank Account', 'bankAccount', 'Bank Connections', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (5, 'b2a1e80d-b6e9-4d0e-98ed-5d70997b9da4', 'P2P', 'Good Receipts', 'GR', 'Receipts', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (26, 'e13f77b0-7e8f-490b-8694-21502d5165e9', 'TRANSACTION_SETTING', 'Manage Approval Matrix', 'approvalMatrix', 'Entity Management', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (30, 'c24d76e0-a936-488e-b689-c67d3bb9e49f', 'TRANSACTION_SETTING', 'Manage Sub-entities', 'subEntity', 'Entity Management', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (31, '6238e645-e902-4d84-a90a-da0607e80650', 'TRANSACTION_SETTING', 'Manage Organization Users', 'user', 'Entity Management', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (9, 'eab72fbb-e0c3-4f1c-895b-f674768029f9', 'P&F', 'Invoice Financing', 'INVF', 'Financing', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (10, '974dbf83-ca46-42e3-8367-7bb1d6f64582', 'P&F', 'Developer Financing', 'DEVF', 'Financing', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (18, '7208cdf6-7c29-483a-9e63-dafdcb46f465', 'TRANSACTION_SETTING', 'Manage Currency', 'currency', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (17, 'a5becd1c-8b72-471e-a37b-d7894aed1d74', 'TRANSACTION_SETTING', 'Manage Trade Codes', 'trade', 'System Configurations', 'ADMIN', 'Projects Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (19, '0c9e0916-8e29-456a-8c51-10f3253c4143', 'TRANSACTION_SETTING', 'Manage UOM', 'uom', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (7, 'ef680b0f-8f67-48d6-88e3-2c201f64fc6a', 'P2P', 'Manual Payment', 'MPAYM', 'Payments', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (8, '56c6d3ac-cc57-4a4b-8fd1-91a138aac544', 'P2P', 'H2H Payment', 'HPAYM', 'Payments', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (21, '3de53fd8-7f37-4e19-9ada-61e3777aa828', 'TRANSACTION_SETTING', 'Manage Catalogue', 'catalogue', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (4, 'a9af83e4-3453-4a8a-b74d-10fc1e17d297', 'P2P', 'Delivery Order', 'DO', 'Receipts', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (20, '17d96e6b-dc18-4688-a050-137736bdfbb3', 'TRANSACTION_SETTING', 'Manage Tax Records', 'tax', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (25, 'cf19f409-72cf-472c-bab8-51159bca0e62', 'TRANSACTION_SETTING', 'Manage Payment Cycle', 'paymentCycle', 'System Configurations', 'ADMIN', 'Payment Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (3, '722eabd7-f38e-4c62-b256-8df1243b468d', 'P2P', 'Purchase Order', 'PO', 'Orders', 'USER', 'Orders List', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (12, 'daf5393f-5efd-403d-8bc3-7520a5b730e6', 'PC', 'Work Order', 'WO', 'Orders', 'USER', 'Orders List', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (1, '91566708-d42f-4d02-acbb-a7ebac1f89e0', 'P2P', 'Pre Purchase Requisition', 'PPR', 'Requisitions', 'USER', 'Pre-Requisitions', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (24, '6fc64408-d472-43e0-86c2-6fa710f61cdc', 'MANAGE_VENDOR', 'Manage Supplier Bank Accounts', 'supplierBankAccount', 'Bank Connections', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (6, '5f565bda-0c8d-482c-9ec2-7cbe6b39b5b2', 'P2P', 'Invoice', 'INV', 'Invoices', 'USER', 'Invoices', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (36, 'a593a99c-2c9e-43d0-b19e-0b93068b4931', 'P2P', 'Pre-Purchase Order', 'PPO', 'Orders', 'USER', 'Orders List', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (37, '43cda733-e781-4ecb-98b9-4d20aad7fe09', 'P2P', 'RFQ Pricing', 'RFQF', 'Request for Quotations', 'USER', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (2, 'a8d457ed-6a4d-477c-99d3-ac8b5027c724', 'P2P', 'Purchase Requisition', 'PR', 'Requisitions', 'USER', 'Requisitions', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (40, 'fa27f585-7558-42fd-99b7-ca15d0a46eb0', 'TRANSACTION_SETTING', 'Manage Features Matrix', 'featureMatrix', 'Entity Management', 'ADMIN', NULL, NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (41, '3ab0b595-794c-4f20-ad00-fd2c127b8c66', 'TRANSACTION_SETTING', ' Manage Documents Prefixes', 'managePrefix', 'System Configurations', 'ADMIN', 'General Settings', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (38, '28384c4a-1811-4e44-bbd9-c70db0445c16', 'P2P', 'Credit Note', 'CN', 'Invoices', 'USER', 'Credit Notes', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (39, 'c73ea19e-d6ee-4c75-a479-acb57f83cd4a', 'PC', 'Variation Requisitions', 'VR', 'Requisitions', 'USER', 'Requisitions', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (11, '305bd32a-77b3-44dc-9f26-2888f098819a', 'PC', 'Work Requisition', 'WR', 'Requisitions', 'USER', 'Requisitions', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (13, '44eba698-e894-46d4-9a15-be210118944a', 'PC', 'Back Charge', 'BC', 'Requisitions', 'USER', 'Requisitions', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (16, '353d419f-5bc3-481e-8603-b7b001130203', 'TRANSACTION_SETTING', 'Manage Project', 'project', 'System Configurations', 'ADMIN', 'Projects Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (28, '4dd22309-82b5-488f-a905-5371c2bc0402', 'TRANSACTION_SETTING', 'Manage Project Forecast', 'projectForeCast', 'System Configurations', 'ADMIN', 'Projects Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (34, '623b49af-8ce8-40c3-b03c-23b626c6c6d8', 'TRANSACTION_SETTING', 'Manage External Vendors', 'vendor', 'System Configurations', 'ADMIN', 'Vendors Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (22, '5d7e738e-18c5-4473-ae8d-fb46f2cc2549', 'TRANSACTION_SETTING', 'Manage Connection', 'connection', 'System Configurations', 'ADMIN', 'Vendors Management', NULL, NULL);
INSERT INTO authority.features (id, uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence) VALUES (27, '92023228-e508-4da0-8b50-7afa289e9b74', 'TRANSACTION_SETTING', 'Manage AP Specialist', 'apSpecialist', 'System Configurations', 'ADMIN', 'Vendors Management', NULL, NULL);
INSERT INTO authority.features (uuid, module_code, feature_name, feature_code, category, profile, sub_category, cat_sequence, sub_cat_sequence)VALUES (uuid_generate_v4(), 'TRANSACTION_SETTING', 'Manage Category', 'category', 'System Configurations', 'ADMIN', 'General Settings', 1, 1);


--
-- Name: features_id_seq; Type: SEQUENCE SET; Schema: authority; Owner: doxaadmin
--

SELECT pg_catalog.setval('authority.features_id_seq', 41, true);


--
-- Name: modules_id_seq; Type: SEQUENCE SET; Schema: authority; Owner: doxaadmin
--

SELECT pg_catalog.setval('authority.modules_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

