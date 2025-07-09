/// @description Insert description here
// You can write your code in this editor
text = noone
update_text = function()
{
	switch(str)
	{
		default:
		{
			text = "noone"
		}
		break;
		
		case "gosma":
		{
			text = global.potions.gosma
		}
		break;
		case "mana":
		{
			text = global.potions.mana
		}
		break;
		case "cura":
		{
			text = global.potions.cura
		}
		break;
		case "coin":
		{
			text = global.coin
		}
		break;
	}
}

update_text()