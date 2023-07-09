function create_gnome(_type) constructor {
	type = _type;
	hp = 100; //can be whatever
}

var _encounter = obj_globalcontroller.next_encounter;

//always at least 1 of strength
enemies = [new create_gnome(_encounter.strength)];

for (var i = 0; i < _encounter.allies; i++;) {
	//determine element of gnome
	//Do not randomize if we are randomizing the 3rd member of the party
	//this confirms a party size of 3 or 4 will have at least 2 of strength element
	var _type = _encounter.strength;
	if (irandom_range(0,3) && i != 2) type = irandom_range(0,3);
	//add to  array
	array_push(enemies,new create_gnome(type));
}

array_shuffle_ext(enemies)
show_debug_message(enemies)
