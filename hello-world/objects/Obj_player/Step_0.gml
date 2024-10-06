// O evento de STEP roda a cada frame do jogo.

// Simulador de gravidade, a cada instante aumentamos a gravidade do player, fazendo com que ele caia mais rapidamente.
// Se quisermos que o player caia em velocidade constante, podemos apenas setar um valor constante.
// Exemplo: ysp=1 (Dessa forma, não importa quantos frames se passem, a gravidade será a mesma.
ysp += P_grv;

// XSP representa o valor de movimento do usuário na horizontal. Inicia com 0 para o usuário estar parado.
// Esse valor é resetado para 0 a cada Frame, então, contanto que o player não mantenha a tecla de movimento pressionada, o personagem permanecerá parado.
xsp = 0;


// keyboard_check verifica se tecla passada como parametro foi clicada.
// order("D"): Basicamente estamos dizendo que queremos observar a tecla D, então quando clicamos em D o valor de  keyboard_check passa a ser true.
// Fazendo com que o movimento do usuário seja incrementado em 2.
if (keyboard_check(vk_right)) {
    // Caso a tecla "D" tenha sido pressionada

	sprite_index = Spr_player_run;
	image_xscale = 1;
	    xsp += 5;
}
// Mesma situação descrita acima, porém aqui quando a tecla A é clicada reduzimos o valor de xsp, fazendo com que o personagem ande para o lado oposto.
if keyboard_check(vk_left) {
	
	sprite_index = Spr_player_run;
	image_xscale = -1;
	xsp -= 5;
}
// place_meeting verifica se existe uma colisão entre o player e o hitbox, caso seja true, significa que o usuário está no chão.
// OBS: na altura (Y) precisamos passar y+1 para verificar se há uma colisão logo abaixo do player. Se passar apenas y, não funciona.
if place_meeting(x, y+1, obj_hitbox ) {
	// É necessário resetar o valor de ysp para 0, para que o pulo ocorra, já que a cada frame estamos aumentando o valor da gravidade.
	// Imagina que o valor da gravidade chegue a 4, a nossa validação abaixo de pulo, não iria mais funcionar.
	ysp=0
	
	// verifica se a tecla space foi clicada e reduz 4 pontos na gravidade, que faz com que o personagem pule.
	if keyboard_check(vk_space) {
		ysp=-4
	}
}

// Essa função faz tudo funcionar, indica onde o usuário pode se mover e detecta colissões... (Pelo menos foi isso que eu entendi, sem ela não funciona rsrs)
move_and_collide(xsp, ysp, obj_hitbox);

if(xsp == 0){
	sprite_index = Spr_player_idle;
}
