// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomize_next_encounter(){
	with obj_globalcontroller
	{
		randomize();

		var _str = irandom_range(0, 3);
		var _weak = irandom_range(0, 3);

		do
		{
			_weak = irandom_range(0, 3);
		}
		until _weak != _str;

		var _rewards = [1000, 2500, 4000, 5500];
		var _allies = irandom_range(0, 3);
		next_encounter = {
			strength : _str,
			weakness : _weak,
			allies : _allies,
			reward : _rewards[_allies]
		};
	}
}