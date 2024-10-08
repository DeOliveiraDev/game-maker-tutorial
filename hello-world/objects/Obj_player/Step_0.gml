//Coisas que tem que acontecer toda hora
yspd += grav; //aplica a gravidade
//aplica um limite ao dash

//butoes do personagem
Key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
Key_jump_press = keyboard_check_pressed(vk_space);

//movimento de X (de esquerda para direita
moveDir = Key_right - key_left;
xspd = moveDir*moveSpd //calcula a velocidade e o lado com negativo sendo esq e positivo dir

	
	var _subPixel = 0.25;
	
	if place_meeting(x + xspd, y, Obj_Hitbox)
	{
	//faz o personagem nao tocar na parede sei la algo assim
	var _pixelcheck = _subPixel* sign(xspd);
	while !place_meeting(x + _pixelcheck,y,Obj_Hitbox)
	{
		x += _pixelcheck;
	}
	xspd = 0;
}
#region //animações
if moveDir == 1{
	sprite_index = Spr_player_run
	image_xscale = 1
}
if moveDir == -1{
	sprite_index = Spr_player_run
	image_xscale = -1
}
if moveDir == 0{
	sprite_index = spr_player_idle
}
#endregion
#region //ataques do personagem
if keyboard_check_pressed(ord("E"))
{
	instance_create_layer(x, y - 4, "instances", Obj_tiro)
}
#endregion
x += xspd;

//movimento de Y ou seja pra baixo e pra cima, gravidade e afins

yspd += grav; //aqui eu adicionei gravidade ao boneco que nem na vida real

//limitador de velocidade de queda
if yspd > termVel {yspd = termVel}
#region //controles
while (keyboard_check(vk_shift) && in_ground && moveSpd < 12) {
    moveSpd += 0.4; // Incrementa o moveSpd em 0.8 a cada ciclo
} //condição compacta: se a tecla Shift estiver pressionada, moveSpd será definido como 8; caso contrário, será 4. 
while (!keyboard_check(vk_shift) && in_ground && moveSpd > 4) {
    moveSpd -= 0.2; // Incrementa o moveSpd em 0.8 a cada ciclo
}
if Key_jump_press && place_meeting(x , y+1, Obj_Hitbox)
{
	yspd = jspd;
	in_ground = false
}

if place_meeting(x, y + yspd, Obj_Hitbox)
	{
	//faz o personagem nao tocar na parede sei la algo assim
	var _pixelcheck = _subPixel * sign(yspd);
	while !place_meeting(x ,y + _pixelcheck,Obj_Hitbox)
	{
		y += _pixelcheck;
	}
	yspd = 0;
	in_ground = true;
}

y += yspd;