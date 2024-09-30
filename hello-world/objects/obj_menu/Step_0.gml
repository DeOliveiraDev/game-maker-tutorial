// Definindo as teclas do jogo
Key_right = keyboard_check_released(ord("D"));
Key_left = keyboard_check_released(ord("A"));
key_up = keyboard_check_pressed(ord("W"));    // Usar keyboard_check_pressed para o menu
key_down = keyboard_check_pressed(ord("S"));// Usar keyboard_check_pressed para o menu
key_enter = keyboard_check(vk_enter);

// Configurando o menu em um código apenas
if (key_up) {
    if (index == 0) {
        index = op_max - 1;  // Vai para a última opção
    } else {
        index--;  // Vai para a opção anterior
    }
}

if (key_down) {
    if (index == op_max - 1) {
        index = 0;  // Vai para a primeira opção
    } else {
        index++;  // Vai para a próxima opção
    }
}
if (key_enter){
if(index == 2) {
	game_end()
	}
if(index == 0){
	room_goto(Inicio);
}
}