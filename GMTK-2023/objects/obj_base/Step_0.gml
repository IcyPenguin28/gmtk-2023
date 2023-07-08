/// @description Insert description here
// You can write your code in this editor

switch active_base
{
	case BASES.DRAGON:
		tooltip = "FIRE DRAGON:\nResists fire attacks, but is weak to electricity"
		break;
	case BASES.YETI:
		tooltip = "YETI:\nResists ice attacks, but is weak to fire"
		break;
	case BASES.SLIME:
		tooltip = "SLIME KING:\nResists electric attacks, but is weak to ice"
		break;
	default:
		tooltip = "ERROR: You should not see this lol"
		break;
}