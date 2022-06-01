UPDATE public.approval_features
	SET is_active=false
	WHERE feature_code='PPO';


INSERT INTO public.approval_features( feature_code, feature_name, created_by_uuid, created_by_name, created_on, is_used, uuid, is_active)
	VALUES ( 'PO', 'Purchase Order', '25b966ee-8d09-48ad-b3ff-7c59c1fab37f', 'Bartell Group', CURRENT_TIMESTAMP, false, uuid_generate_v4(), true);