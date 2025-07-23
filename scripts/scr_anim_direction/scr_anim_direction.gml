// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_anim_4_direction(
    up_iddle, up_run,
    down_iddle, down_run,
    left_iddle, left_run,
    right_iddle, right_run)
{
    
    // Determina o estado da direção com base no ângulo
    if (dir >= 45 && dir < 135) {
        dir_state = "up";
    } else if (dir >= 135 && dir < 225) {
        dir_state = "left";
    } else if (dir >= 225 && dir < 315) {
        dir_state = "down";
    } else {
        dir_state = "right";
    }

    // Define a sprite com base na direção e movimento
    switch (dir_state) {
        case "up":
            if (vspd != 0) {
                sprite_index = up_run;
            } else {
                sprite_index = up_iddle;
            }
            break;

        case "down":
            if (vspd != 0) {
                sprite_index = down_run;
            } else {
                sprite_index = down_iddle;
            }
            break;

        case "right":
            if (hspd != 0) {
                sprite_index = right_run;
            } else {
                sprite_index = right_iddle;
            }
            break;

        case "left":
            if (hspd != 0) {
                sprite_index = left_run;
            } else {
                sprite_index = left_iddle;
            }
            break;
    }
}
