/// @description Insert description here
// You can write your code in this editor

switch active_base
{
	case BASES.DRAGON:
		tooltip = "FIRE DRAGON:\nResists fire attacks, but is weak to electricity.\nMulti Target moves are stronger."
		break;
	case BASES.YETI:
		tooltip = "YETI:\nResists ice attacks, but is weak to fire.\nSingle Target moves are stronger."
		break;
	case BASES.SLIME:
		tooltip = "SLIME KING:\nResists electric attacks, but is weak to ice.\nHealing Moves are more effective."
		break;
	default:
		tooltip = "ERROR:\nYou should not see this lol"
		break;
}