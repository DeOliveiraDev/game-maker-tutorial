//variaveis
var altura = display_get_gui_height();
var largura = display_get_gui_width();
var y1 = altura/2
var x1 = largura/2
var dist = 55;
//aqui desenharemos o menu
draw_set_font(Font_2p);
draw_set_color(c_red);
for(var i=0;i < op_max;i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if(index == i){
		draw_set_color(c_blue);//aqui eu decido a cor diferente do cursor
	}else{
		draw_set_color(c_red);
	}
	draw_text(x1,y1 + (dist*i), options[i]);
}

draw_set_font(-1);



