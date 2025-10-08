alert('Bem vindo ao jogo do número secreto!');
let numeroSecreto = 10;
let chute  = prompt('Escolha um número entre 1 e 10');

console.log(numeroSecreto);

if (numeroSecreto == chute ) {
    alert(`Você descobriu o número secreto ${numeroSecreto}`)
} else {
    alert('Você errou!')
}


