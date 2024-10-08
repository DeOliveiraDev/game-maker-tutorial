// Desenha o sprite animado do tamanho da tela de forma opaca
//draw_sprite_ext(Sprite_black_hole, image_index, room_width / 2, room_height / 2, room_width, room_height, 0, c_white, 1);

// Define a transparência do texto (por exemplo, 0.5 para 50% de transparência)


// Define a cor do texto do título
draw_set_color(c_white);

// Desenha o título centralizado no topo
var title = "Megaman Zero Chronicles";
var title_width = string_width(title);
draw_set_font(fnt_gamer2);
draw_text((room_width - title_width) / 2, 140, title); // 140 é a posição Y do topo
draw_set_alpha(1);
draw_set_font(fnt_gamer1)
// Loop para desenhar cada opção do menu
for (var i = 0; i < array_length(menu_options); i++) {
    // Verifica se a opção atual é a selecionada
    if (i == selected_option) {
        // Se for a opção selecionada, muda a cor para amarelo
        draw_set_color(c_yellow);
    } else {
        // Caso contrário, usa a cor branca
        draw_set_color(c_white);
    }
    
    // Desenha o texto da opção na posição ajustada para baixo (menu_y_start)
   draw_text(menu_x, menu_y_start + i * (20 + 10), menu_options[i]); // +10 para dar uma margem
}

// Resetando a transparência de volta para 1 para garantir que nada mais seja desenhado com transparência
draw_set_alpha(1);
