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
    if (selected_option == 0) {
        // Se "Novo Jogo" for selecionado
        room_goto(Stage_selection); // Muda para a sala do jogo
    } else if (selected_option == 1) {
        // Se "Continuar" for selecionado
        show_message("Continuar não implementado."); // Mensagem de placeholder
    } else if (selected_option == 2) {
        // Se "Sair" for selecionado
        game_end(); // Encerra o jogo
    }
}
