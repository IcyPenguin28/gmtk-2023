/// @description Insert description here
// You can write your code in this editor

if turn == 0
{
	// Remove text advance button (there is no text to advance on turn 0)
	if instance_exists(obj_textboxadvancebutton)
	{
		instance_destroy(instance_nearest(x, y, obj_textboxadvancebutton));
	}
	
	if playeraction == noone && !created_moves
	{
		// Present the player with their options
		var _block1 = instance_create_depth(160, 304, -10000, obj_moveblock_fight);
		var _block2 = instance_create_depth(480, 304, -10000, obj_moveblock_fight);
	
		// Change their properties by assigning them move_slot
		// Assign each other as partners so that both blocks will be destroyed upon choosing one
		with _block1
		{
			move_slot = 0;
			partner = _block2;
		}
	
		with _block2
		{
			move_slot = 1;
			partner = _block1;
		}
		
		show_debug_message(_block2.move_slot);
		created_moves = true;
	}
	else if array_length(targets) == 0
	{
		// The player has yet to choose a target
		
		// Determine if the move hits all or if there is only 1 enemy on screen (will skip target selection)
		
	}
}