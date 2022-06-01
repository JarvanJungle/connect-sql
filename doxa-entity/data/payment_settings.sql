insert into payment_settings (code, description, is_default) values
      ('INV_DUE_DATE', 'Invoice Due Date - where the overdue date will be calculated based on the invoice due date', true),
      ('SYS_DUE_DATE', 'System Due Date - where the overdue date will be calculated based on the payment cycle due date', false);