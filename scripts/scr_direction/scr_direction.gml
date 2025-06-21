// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_direction() {
    
    var _i = global.inputs;

    // Se ele aperta algum botão, calcula a direção do player
    if (_i.left or _i.right or _i.up or _i.down) {
		
        dir = point_direction(0, 0, _i.right - _i.left, _i.down - _i.up);
       
        spd = def_spd;
		
    }else{
		
		spd = 0;
		
	}
    #region arruma o problema de direção: se apertar cima e baixo, usa a última tecla pressionada

    if (_i.left_p)  last_key = vk_left;
    if (_i.right_p) last_key = vk_right;
    if (_i.up_p)    last_key = vk_up;
    if (_i.down_p)  last_key = vk_down;

    if (_i.left and _i.right) {
        if (last_key == vk_right) {
            dir = 0;
        } else {
            dir = 180;
        }
    }

    if (_i.down and _i.up) {
        vspd = 0;
        if (last_key == vk_up) {
            dir = 90;
        } else {
            dir = 270;
        }
    }

    #endregion
}
