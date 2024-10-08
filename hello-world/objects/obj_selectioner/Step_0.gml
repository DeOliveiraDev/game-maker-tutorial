// Verifica as teclas a cada frame
down_key = keyboard_check_pressed(vk_down);
left_key = keyboard_check_pressed(vk_left);
right_key = keyboard_check_pressed(vk_right);
up_key = keyboard_check_pressed(vk_up);

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
