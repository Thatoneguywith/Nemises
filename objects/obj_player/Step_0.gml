/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F33D1B8
/// @DnDArgument : "code" "//-------Update input$(13_10)input_left = keyboard_check(vk_left);$(13_10)input_right = keyboard_check(vk_right);$(13_10)input_up = keyboard_check(vk_up);$(13_10)input_down = keyboard_check(vk_down);$(13_10)input_walk = keyboard_check(vk_control);$(13_10)input_run = keyboard_check(vk_shift);$(13_10)//-------Alter speed$(13_10)if (input_walk or input_run){$(13_10)	spd = abs ((input_walk*w_spd) - (input_run*r_spd));$(13_10)}else{$(13_10)	spd = n_spd;$(13_10)}$(13_10)//-------Reset move variables$(13_10)moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)//-------Intended movement$(13_10)moveX =(input_right - input_left) * spd;$(13_10)if(moveX == 0){moveY = (input_down - input_up) * spd; }$(13_10)$(13_10)//--------Collision check$(13_10)//horiziontal$(13_10)if(moveX !=0){$(13_10)	if(place_meeting(x+moveX, y, obj_collision)){$(13_10)		repeat(abs(moveX)){$(13_10)		if(!place_meeting(x+sign(moveX), y, obj_collision)){$(13_10)			x += sign(moveX);$(13_10)			}else{$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)		moveX = 0;$(13_10)	}$(13_10)}$(13_10)//vertical$(13_10)if(moveY !=0){$(13_10)	if(place_meeting(x, y+moveY, obj_collision)){$(13_10)		repeat(abs(moveX)){$(13_10)		if(!place_meeting(x, y+sign(moveY), obj_collision)){$(13_10)			y += sign(moveY);$(13_10)			}else{$(13_10)				break;$(13_10)			}$(13_10)		}$(13_10)		moveY = 0;$(13_10)	}$(13_10)}$(13_10)//---------Apply Movement$(13_10)x += moveX$(13_10)y += moveY$(13_10)$(13_10)//player_death$(13_10)image_alpha = hp/100;$(13_10)if hp<= 0$(13_10)game_end();"
//-------Update input
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);
//-------Alter speed
if (input_walk or input_run){
	spd = abs ((input_walk*w_spd) - (input_run*r_spd));
}else{
	spd = n_spd;
}
//-------Reset move variables
moveX = 0;
moveY = 0;

//-------Intended movement
moveX =(input_right - input_left) * spd;
if(moveX == 0){moveY = (input_down - input_up) * spd; }

//--------Collision check
//horiziontal
if(moveX !=0){
	if(place_meeting(x+moveX, y, obj_collision)){
		repeat(abs(moveX)){
		if(!place_meeting(x+sign(moveX), y, obj_collision)){
			x += sign(moveX);
			}else{
				break;
			}
		}
		moveX = 0;
	}
}
//vertical
if(moveY !=0){
	if(place_meeting(x, y+moveY, obj_collision)){
		repeat(abs(moveX)){
		if(!place_meeting(x, y+sign(moveY), obj_collision)){
			y += sign(moveY);
			}else{
				break;
			}
		}
		moveY = 0;
	}
}
//---------Apply Movement
x += moveX
y += moveY

//player_death
image_alpha = hp/100;
if hp<= 0
game_end();