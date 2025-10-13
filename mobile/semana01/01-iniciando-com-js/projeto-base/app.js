alert('Bem vindo ao jogo do número secreto!');
let numeroMax = 100;
let numeroSecreto = parseInt(Math.random() * numeroMax + 1);
let chute;
let tentativas = 1;

console.log(numeroSecreto);

//enquanto chute não for igual ao número secreto
while (chute != numeroSecreto) {
    chute = prompt(`Escolha um número secreto entre 1 e ${numeroMax}`);

    if (chute == numeroSecreto) {
        break;
    } else {
        if (chute > numeroSecreto) {
            alert(`O número secreto é menor que ${chute}`);
        } else {
            alert(`O número secreto é maior que ${chute}`);
        }
        tentativas ++;
    }
}

let palavraTentativa = tentativas > 1 ? 'tentativas' : 'tentativa';
alert(`Você descobriu o número secreto ${numeroSecreto} com ${tentativas} ${palavraTentativa}!!!`);

