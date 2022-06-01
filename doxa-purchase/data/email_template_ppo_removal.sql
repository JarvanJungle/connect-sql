update email_template
set subject = 'Purchase Requisition %s is pending your conversion to Purchase Order',
    content = 'Purchase Requisition %s is pending your conversion to Purchase Order.<br>Project: %s<br>Requestor: %s<br><br><a href="%s">Login now</a> to view the record.'
where feature_code = 'PR' and action = 'approve_by_last_approver';

delete from email_template where feature_code = 'PPO';