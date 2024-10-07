window_set_size(1280, 720); //seta o jogo pra 780p
// Evento Create: Inicializa as variáveis do menu

// Cria um array com as opções do menu
menu_options = ["Novo Jogo", "Continuar", "Sair"];


// Define qual opção está selecionada (0 = "Novo Jogo")
selected_option = 0; 

// Calcula a posição x para centralizar o menu horizontalmente
menu_x = room_width / 2;

// Define a posição y para alinhar o menu mais para baixo na tela
menu_y_start = room_height /2; // Aqui, 1/3 da altura da sala
//escolhe a fonte
draw_set_font(Font_gamer);
