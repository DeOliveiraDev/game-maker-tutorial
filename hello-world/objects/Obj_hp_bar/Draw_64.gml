var amount = ( global.life/ life_max ) * lifebar_w;
var amount_fixed = 1 * lifebar_w;
var amount_feedback = (life_feedback/ life_max) * lifebar_w;
var x1 = 70;
var y1 = 30;
var x2 = x1 + amount;
var x2_fixed = x1 + amount_fixed
var x2_feedback = x1 + amount_feedback
var y2 = y1 + lifebar_h;


	//background
	draw_set_color(c_gray);
	draw_rectangle( x1, y1, x2_fixed, y2, 0 );
	
if( global.life > 0 ){


	
	//barra de dano
	draw_set_color(c_purple);
	draw_rectangle( x1, y1, x2_feedback, y2, 0 );
	

	//desenhando a barra de vida
	draw_set_color(color_life);
	draw_rectangle(x1, y1, x2, y2, false);

	//borda nao é nescessaria
}