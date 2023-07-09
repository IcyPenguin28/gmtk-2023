/// @description Insert description here
// You can write your code in this editor

// Player turn handling
if turn == 0
{
	
	if playeraction == noone && !created_moves
	{
		// Remove text advance button (there is no text to advance on turn 0)
		if instance_exists(obj_textboxadvancebutton)
		{
			instance_destroy(instance_nearest(x, y, obj_textboxadvancebutton));
		}
		
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
		
		created_moves = true;
	}
	else if targeting && !player_is_acting && array_length(targets) == 0
	{
		// The player has yet to choose a target
		show_debug_message("It's targeting time");
		
		// Determine if the move hits all or if there is only 1 enemy on screen (will skip target selection)
		if instance_number(obj_gnome) == 1
		{
			// Only 1 target, push it to the array
			show_debug_message("Only 1 instance");
			array_push(targets, instance_nearest(x, y, obj_gnome));
			targeting = false;
			player_is_acting = true;
		}
		else if playeraction.selects_target
		{
			// This move can select one of several targets
			show_debug_message("Manual selection");
			obj_textbox.text = "Select a target by clicking on them";
			if position_meeting(mouse_x, mouse_y, obj_gnome) && mouse_check_button_pressed(mb_left)
			{
				array_push(targets, instance_nearest(mouse_x, mouse_y, obj_gnome));
				targeting = false;
				player_is_acting = true;
			}
		}
		else
		{
			// This is a move that targets everyone
			// Add every gnome on screen to the targets array
			// Note that for moves like Cheeseburger that don't deal damage, the targets will go unused, but that's okay.
			show_debug_message("Targets everyone");
			for (var i = 0; i < instance_number(obj_gnome); i++;)
			{
			    array_push(targets, instance_find(obj_gnome, i));
				targeting = false;
				player_is_acting = true;
			}
		}
	}
	else if player_is_acting
	{
		// Restore the textbox advancement button because there's text again
		instance_create_depth(576, 336, -10000, obj_textboxadvancebutton);
		
		// Time to implement all of the movessssssssssss
		// I am putting this shit in a script for readability's sake
		execute_player_move(playeraction.name);
		player_is_acting = false;
	}
}

// Win condition handling
if win
{
	
}

// Lose condition handling
if lose
{
	