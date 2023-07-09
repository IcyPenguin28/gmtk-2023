/// @description Insert description here
// You can write your code in this editor
// Get rid of any blocks that have been unlocked already or those that are already in the cart

if room == rm_shop
{
	remove_purchased_items();
	remove_basketed_items();
}

if room == rm_mainmenu
{
	slot1 = inst_58604B20.properties;
	slot2 = inst_32E381CE.properties;
}