/// @description Insert description here
// You can write your code in this editor
surface_resize(application_surface,640,360);
window_set_size(640,360);
display_set_gui_size(640,360);

enum ELEMENTS
{
	NORMAL,
	FIRE,
	ICE,
	ELEC
}

total_funds = 7000;
victories = 0;

base = BASES.DRAGON;
slot1 = noone;
slot2 = noone;

unlocked_moves = [];


page = 0;

// Each array of structs in this array is its own page of 4 move blocks in the shop
catalog = [
	[
		{name : "CHEESE-\nBURGER", tooltip : "Mmmmmm...\nRestores 25% HP.", element : 0, cost : 3500, selects_target : false},
		{name : "FLAME\nCANNON", tooltip : "Crispen those gnomes with a fiery blast!\nTargets a single Gnome for Fire damage.", element : 1, cost : 2500, selects_target : true},
		{name : "ICICLE\nIMPACT", tooltip : "Need to leave the gnomes frozen in their tracks?\nTargets a single Gnome for Ice damage.", element : 2, cost : 2500, selects_target : true},
		{name : "ANODE\nRIG", tooltip : "This will give those little tricksters a shock!\nTargets a single Gnome for Electric damage.", element : 3, cost : 2500, selects_target : true}
	],
	[
		{name : "LAVA\nWAVE", tooltip : "Let's watch the world burn down.\nDeals Fire damage to all enemies.", element : 1, cost : 6000, selects_target : false},
		{name : "GROUND\nROD", tooltip : "This move will surely stun each of those cone heads.\nDeals Electric damage to every enemy.", element : 3, cost : 6000, selects_target : false},
		{name : "OVER-\nWINTER", tooltip : "Targets every Gnome for Ice damage.", element : 2, cost : 6000, selects_target : false},
		{name : "CLAPPING\nCRASH", tooltip : "Slap those Gnomes straight.\nDeals Neutral damage to a single Gnome.", element : 0, cost : 2000, selects_target : true}
	],
	[
		{name : "HUBRIS\nHUFF", tooltip : "Doubles your attack, while doubling the damage you receive.", element : 0, cost : 3000, selects_target : false},
		{name : "IRON\nSHIELD", tooltip : "Reduces received damage by 30%", element : 0, cost : 3500, selects_target : false},
		{name : "PICK-\nPOCKET", tooltip : "We're the bad guys, so we get to use some bad tactics.\nThis move steals cash from the opposing party,\nat the cost of less prize money from a victory.", element : 0, cost : 3000, selects_target : false},
		{name : "GIGA\nSLASH", tooltip : "Slice 'n' dicin' time!\nDeals Neutral damage to all Gnomes.", element : 0, cost : 5000, selects_target : false}
	]
];

randomize();

var _str = irandom_range(0, 3);
var _weak = irandom_range(0, 3);

do
{
	_weak = irandom_range(0, 3);
}
until _weak != _str;

var _rewards = [500, 1250, 2000, 3500]
var _allies = irandom_range(0, 3);
next_encounter = {
	strength : _str,
	weakness : _weak,
	allies : _allies,
	reward : _rewards[_allies]
};