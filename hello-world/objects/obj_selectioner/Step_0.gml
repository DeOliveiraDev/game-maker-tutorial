// Verifica as teclas a cada frame
down_key = keyboard_check_pressed(vk_down);
left_key = keyboard_check_pressed(vk_left);
right_key = keyboard_check_pressed(vk_right);
up_key = keyboard_check_pressed(vk_up);
selection_key = keyboard_check(vk_enter);

// Calcula o movimento
squarex = (right_key - left_key) * 644;
squarey = (down_key - up_key) * 462;

// Atualiza a posição dentro dos limites
x_new = x + squarex;
y_new = y + squarey;

// Limita a posição a um campo 3x3
if (x_new >= 0 && x_new <= 1288) {  // Limites horizontais
    x = x_new;
}
if (y_new >= 0 && y_new <= 924) {   // Limites verticais
    y = y_new;
}
#region possiveis x e y pra usar de referencias pras fazes nos IF's
/*
Posições possíveis no campo 3x3:

(x = 0, y = 0)     ->  [Topo Esquerda]
(x = 644, y = 0)   ->  [Topo Centro]
(x = 1288, y = 0)  ->  [Topo Direita]

(x = 0, y = 462)   ->  [Meio Esquerda]
(x = 644, y = 462) ->  [Meio Centro]
(x = 1288, y = 462)->  [Meio Direita]

(x = 0, y = 924)   ->  [Fundo Esquerda]
(x = 644, y = 924) ->  [Fundo Centro]
(x = 1288, y = 924)->  [Fundo Direita]
*/
#endregion
if selection_key and x == 0 and y == 0{
	room_goto(Red_stage);
}