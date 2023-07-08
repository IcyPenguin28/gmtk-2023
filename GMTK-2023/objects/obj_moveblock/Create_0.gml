/// @description Insert description here
// You can write your code in this editor
init_x = x;
init_y = y;
init_depth = depth;


position = position;

var _struct = obj_globalcontroller.catalog[obj_globalcontroller.page][position];

properties = {
	name : _struct.name,
	tooltip : _struct.tooltip,
	element : _struct.element,
	cost : _struct.cost
}

being_carried = false;