INSERT INTO public.prefix_configurable_functions (function_name, function_code, default_prefix, default_number_of_digits, is_buyer_portal) VALUES ('RFQ Pricing', 'RFQF', 'RFQ', 9, false);
INSERT INTO public.approval_features(id, feature_code, feature_name, created_by_uuid, created_by_name, created_on, is_used, uuid)
	VALUES (11, 'RFQF', 'RFQ Pricing', '25b966ee-8d09-48ad-b3ff-7c59c1fab37f', 'Bartell Group', CURRENT_TIMESTAMP, false, 'ee761dad-ba06-40ca-900f-10f58955b53f');

