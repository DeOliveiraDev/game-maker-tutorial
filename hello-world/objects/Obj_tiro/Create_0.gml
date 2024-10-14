// Velocidade do tiro
speed = 10;

// Verifica a direção do personagem
if (Obj_player.image_xscale > 0) {
    // Personagem olhando para a direita
    direction = 0; // Direção 0 graus para a direita
} else {
    // Personagem olhando para a esquerda
    direction = 180; // Direção 180 graus para a esquerda
}

// Redimensiona o sprite do tiro (ajusta conforme necessário)
image_xscale = 0.05; // Diminui a largura para 50%
image_yscale = 0.05; // Diminui a altura para 50%
