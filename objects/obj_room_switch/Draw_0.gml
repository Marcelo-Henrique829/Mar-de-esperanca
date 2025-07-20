var _p = obj_player_1
var _t = 0.5 + 0.5 * sin(current_time * 0.009);

var _d = point_distance(x,y,_p.x,_p.y)
if(_d<1500)
{
    draw_sprite_ext(spr_seta,0,x+margin_x*10,y+margin_y*15,1,1+_t/4,image_angle,c_white,alpha)
}

side_angle()