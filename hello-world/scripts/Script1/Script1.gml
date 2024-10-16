function approach(val1, val2, amount) {
    if (val1 < val2) {
        val1 += amount;
        if (val1 > val2)
            return val2; // Retorna val2 se ultrapassar
    } else if (val1 > val2) {
        val1 -= amount;
        if (val1 < val2)
            return val2; // Retorna val2 se ultrapassar
    }
    return val1; // Retorna o valor ajustado
}
