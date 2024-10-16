// Evento Draw do objeto HUD

// Desenha a HUD em uma posição fixa na tela
var hud_x = 120; // Posição horizontal fixa
var hud_y = 30;  // Posição vertical fixa

// Desenha o sprite 'Player_life' na posição fixa da tela
draw_sprite_ext(spr_player_life_hud, 0, hud_x, hud_y, image_xscale, image_yscale, image_angle, c_white, 1);
