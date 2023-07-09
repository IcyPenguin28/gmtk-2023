/// @description Insert description here
// You can write your code in this editor

obj_fightcontroller.playeraction = properties;

// Move onto next statea
obj_fightcontroller.targeting = true;

window_set_cursor(cr_default);

instance_destroy();
instance_destroy(partner);