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
	if (irandom_range(0,3) && i != 2) _type = irandom_range(0,3);
	if (i > 0 && obj_globalcontroller.victories > 10 && random_range(0,4) < 1) _type = ELEMENTS.KNIGHT
	//add to  array
	array_push(enemies,new create_gnome(_type));
}

array_shuffle_ext(enemies)
show_debug_message(enemies)


// Gnome Spawning Coords
// [x1,  ..., xn]	where n is the number of gnomes on the field
spawn_coords = [
	[320],	// 1 gnome
	[256, 384],	// 2 gnomes
	[226, 320, 414],	// 3 gnomes
	[160, 256, 384, 480]	// take a wild guess
];

// Summon gnomes onto the battlefield
for (var i = 0; i < array_length(enemies); i++;)
{
	with (instance_create_layer(spawn_coords[array_length(enemies) - 1][instance_number(obj_gnome)], 160, "Instances", obj_gnome))
	{
		type = obj_fightcontroller.enemies[i].type;
		maxhp = obj_fightcontroller.enemies[i].hp;
	}
}

// Combat shit (it's 4 am and i hate my life)
turn = -1;	// determines who's turn it is. First up is player (turn = 0), then goes through the enemies array.
playeraction = noone;	// Will contain the properties of the player's chosen move for their turn
targeting = false;	// Flag that will be true when the player has to select a target, otherwise will be false
targets = [];	// Will contain every gnome that will be affected by the player's action
created_moves = false;	// A flag that will become true when the player's moves have been displayed to them (prevents duplicates from being made due to step event)
player_is_acting = false;	// A flag that will become true when the player has chosen both a move and a target (if applicable) This is when the move executes

group_weakness = obj_globalcontroller.next_encounter.weakness;

player_maxhp = 400;
player_hp = player_maxhp;
hubris = 0;	// Hubris multiplier. Used in attack and defense calculations
iron_shield = 0;	// Will become 3 if player uses iron shield. Every turn, it goes down by 1. If its at 0, it will not give you the defense boost.

player_hp_display = 1; //used to animate the healthbar

active_enemies = [];	// Populated with the for loop below. Determines which enemies can still attack (i.e. which ones aren't dead af).

for (var i = 0; i < instance_number(obj_gnome); i++;)
{
	array_push(active_enemies, instance_find(obj_gnome, i));
}