/// @description Insert description here
// You can write your code in this editor
if instance_place(x, y, obj_cart)
{
	var _inst = instance_place(x, y, obj_cart);
	_inst.num_items ++;
	array_push(_inst.items, properties)
	_inst.total_cost += properties.cost;
	instance_destroy();
}
else
{
	x = init_x;
	y = init_y;
}

being_carried = false;
depth = init_depth;