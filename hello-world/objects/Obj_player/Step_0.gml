y += grv; //aqui o boneco ganha gravidade e começa a cair
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
Key_jump = keyboard_check(vk_space);
jump_height = 0;

if(key_right){
	x += p_speed;
}
if(key_left){
	x -= p_speed;
}
if (place_meeting(x, y, Obj_hitbox )) {

    while(place_meeting(x, y , Obj_hitbox)) {

         y -= p_speed;
		 
    }
}
if(Key_jump and !place_meeting(x , y, Obj_hitbox) and jump_height < 5){
	
	y -= p_jump_power;
	jump_height += 1;
}
