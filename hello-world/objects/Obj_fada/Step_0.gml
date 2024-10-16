if (mouse_check_button_pressed(mb_left)) {
    var tiro_x = x;
    
    // Ajusta a posição com base na direção do Obj_player
    if (Obj_player.image_xscale == -1) {
        tiro_x = x - 4; // Ajusta para a esquerda, por exemplo
    } else if (Obj_player.image_xscale == 1) {
        tiro_x = x + 4; // Ajusta para a direita, por exemplo
    }
    
    instance_create_layer(tiro_x, y - 4, "Instances", Obj_tiro);
}
// Evento Step do Obj_tiro

// Aumentar o delay_timer até atingir o valor máximo
if (delay_timer < delay_max) {
    delay_timer++;
} else {
    // Após o delay, calcular a posição alvo para seguir o Obj_player
    target_x = Obj_player.x;
    target_y = Obj_player.y;
}

// Movimento de suavização para seguir o alvo
x += (target_x - x + 30) * 0.10; // Suavização no eixo X
y += (target_y - y - 60) * 0.10; // Suavização no eixo Y

// Adicionar oscilação vertical
y += sin(oscilacao_vel * current_time) * amplitude;
