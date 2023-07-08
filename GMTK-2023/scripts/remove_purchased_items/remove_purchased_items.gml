// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_purchased_items(){
	
	// Get all instances of obj_moveblock into an array
	var _blockarr = [];
	for (var i = 0; i < instance_number(obj_moveblock); i++;)
	{
	    _blockarr[i] = instance_find(obj_moveblock, i);
	}
	
	// Compare structs of shop items to those unlocked in obj_globalcontroller
	var _strmovearr = [];
	
	for (var i = 0; i < array_length(obj_globalcontroller.unlocked_moves); i++;)
	{
	   array_push(_strmovearr, string(obj_globalcontroller.unlocked_moves[i]));
	}
	
	for (var i = 0; i < array_length(_blockarr); i++;)
	{
	   if array_contains(_strmovearr, string(_blockarr[i].properties))
	   {
		   show_debug_message(_blockarr[i].properties);
		   instance_destroy(_blockarr[i]);
	   }
	}
}