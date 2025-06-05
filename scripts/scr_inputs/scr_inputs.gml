 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//inputs
global.inputs = {

	left:false,
	right:false,
	up:false,
	down:false,
	attack:false,
	dash:false,
	run:false,
	aim:false,
	
	
	left_p:false,
	right_p:false,
	up_p:false,
	down_p:false

	
}



function scr_inputs(_bool)
{
	if(!_bool) return
	var _i = global.inputs

		_i.left =  keyboard_check(ord("A"))
		_i.right =  keyboard_check(ord("D"))
		_i.up=  keyboard_check(ord("W"))
		_i.down =  keyboard_check(ord("S"))
		_i.attack = mouse_check_button_pressed(mb_left) or keyboard_check(ord("J"))
		_i.dash = keyboard_check_pressed(vk_space)
		_i.run = keyboard_check(vk_shift)
		_i.aim = keyboard_check(vk_control) or mouse_check_button(mb_right)
	

		_i.left_p =  keyboard_check_pressed(ord("A"))
		_i.right_p =  keyboard_check_pressed(ord("D"))
		_i.up_p=  keyboard_check_pressed(ord("W"))
		_i.down_p =  keyboard_check_pressed(ord("S"))


}