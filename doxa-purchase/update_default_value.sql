update delivery_order_item set po_quantity = 0 where po_quantity is null;
update delivery_order_item set qty_converted = 0 where qty_converted is null;
update delivery_order_item set qty_rejected = 0 where qty_rejected is null;
update delivery_order_item set qty_received = 0 where qty_received is null;
update delivery_order_item set qty_to_convert = 0 where qty_to_convert is null;
update delivery_order_item set gr_qty_received = 0 where gr_qty_received is null;
update delivery_order_item set gr_qty_rejected = 0 where gr_qty_rejected is null;

