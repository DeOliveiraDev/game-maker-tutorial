// Evento de teclado: Controla a navegação no menu

// Verifica se a tecla "cima" foi pressionada
if (keyboard_check_pressed(vk_up)) {
    // Muda a opção selecionada para a anterior, com loop de volta se necessário
    selected_option = (selected_option - 1 + array_length(menu_options)) % array_length(menu_options);
}

// Verifica se a tecla "baixo" foi pressionada
if (keyboard_check_pressed(vk_down)) {
    // Muda a opção selecionada para a próxima
    selected_option = (selected_option + 1) % array_length(menu_options);
}

// Verifica se a tecla "Enter" foi pressionada
if (keyboard_check_pressed(vk_enter)) {
    // Ações baseadas na opção selecionada
    switch (selected_option) {
        case 0: // Se "Novo Jogo" for selecionado
            room_goto(Green_stage); // Muda para a sala do jogo
            break;
        case 1: // Se "Continuar" for selecionado
            // Adiciona lógica para carregar o jogo, se houver
            show_message("Continuar não implementado."); // Mensagem de placeholder
            break;
        case 2: // Se "Sair" for selecionado
            game_end(); // Encerra o jogo
            break;
    }
}
