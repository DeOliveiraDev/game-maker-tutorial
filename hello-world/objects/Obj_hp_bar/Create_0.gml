//camera display
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_w, view_h);

//barra de vida
life_max = 100;
global.life = life_max;
lifebar_w = 140;
lifebar_h = 20; //grossura da barra pra baixo
life_feedback = approach(global.life, life_max, 1)
color_life = c_red;