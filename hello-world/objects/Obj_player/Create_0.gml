//detalhes do jogador
window_set_size(1280, 720); //seta o jogo pra 780p
//movimentação
moveDir = 0; // vai fazer a conta de +1 ou -1 pra saber o lado
moveSpd = 8; // velocidade que o boneco corre
yspd = 0; //controla pra cima e pra baixo
xspd = 0; //controla esquerda e direita

//mecanicas de pulo
grav = .275; //força da gravidade que empurra nosso boneco para baixo mesmo coisa que 0.75
termVel = 4; // velocidade maxima de queda pq senao fica esquisito em jogos
jspd = -6.15; //força q vai jogar nosso boneco para cima, tem q ser negativo pq queremos ir pra cima e no game maker eh negativo o Y


sprite_index = spr_player_idle;