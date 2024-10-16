//Coisas que tem que acontecer toda hora
yspd += grav; //aplica a gravidade
//pega os dados da camera, tamanho e largura
var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//butoes do personagem
Key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
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
if moveDir >= 1{
	sprite_index = Spr_player_run
	image_xscale = 1
}
if moveDir <= -1{
	sprite_index = Spr_player_run
	image_xscale = -1
}
if moveDir == 0{
	sprite_index = spr_player_idle
}
#endregion
#region //ataques do personagem



#endregion
x += xspd;

//movimento de Y ou seja pra baixo e pra cima, gravidade e afins

yspd += grav; //aqui eu adicionei gravidade ao boneco que nem na vida real

//limitador de velocidade de queda
if yspd > termVel {yspd = termVel}
#region //controles
if (keyboard_check(vk_shift) && in_ground) {
    moveSpd = 8;
	 image_speed = 1.5;
} //condição compacta: se a tecla Shift estiver pressionada, moveSpd será definido como 8; caso contrário, será 4. 
if (!keyboard_check(vk_shift) && in_ground ) {
    moveSpd = 4; 
	image_speed = 1;
}
if Key_jump_press && place_meeting(x , y+1, Obj_Hitbox)
{
	yspd = jspd;
	in_ground = false
}
#endregion
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
#region coisas dos personagem como a fada e hud e etc
if (!instance_exists(Obj_hp_bar)) {

	var pos_x = 0;
    var pos_y = 1000;
	instance_create_layer(pos_x, pos_y, "HUD", Obj_hp_bar);
	
if (!instance_exists(Obj_fada)) {

	var pos_x = irandom_range(view_x, view_x + view_w);
    var pos_y = irandom_range(view_y, view_y + view_h);
	instance_create_layer(pos_x, pos_y, "Instances", Obj_fada);
}
if (!instance_exists(Player_life)) {

	var pos_x = 0;
    var pos_y = 1000;
	instance_create_layer(pos_x, pos_y, "HUD_1", Player_life);
}

if (instance_number(Obj_fada) > 1) {
    // Se houver mais de uma instância, destrói a instância extra
    with (Obj_fada) {
        instance_destroy();
        // Interrompe o loop para que apenas uma instância seja destruída por vez
        break;
    }
}if (instance_number(Player_life) > 1) {
    // Se houver mais de uma instância, destrói a instância extra
    with (Player_life) {
        instance_destroy();
        // Interrompe o loop para que apenas uma instância seja destruída por vez
        break;
    }
}
}
#endregion