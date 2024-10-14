// Evento Draw do objeto HUD

// Desenha a HUD em coordenadas de tela
var hud_x = 0; // Posição horizontal fixa na tela
var hud_y = 10; // Posição vertical fixa na tela

// Define o tamanho da HUD
draw_self();
draw_sprite_ext(sprite_index, image_index, hud_x, hud_y, 0.2, 0.2, 0, c_white, 1);