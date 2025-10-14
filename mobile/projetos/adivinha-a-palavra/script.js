// Elementos da Página
const tabuleiroDiv = document.getElementById('tabuleiro');
const chuteInput = document.getElementById('chute-input');
const chutarBtn = document.getElementById('chutar-btn');
const mensagemP = document.getElementById('mensagem');
const reiniciarBtn = document.getElementById('reiniciar-btn');

// Variáveis do jogo 
let palavraSecreta ='';
let tentativaAtual = 0;
const MAX_TENTATIVAS = 6;

// Inicia o jogo buscando uma palavra no backend
async function iniciarJogo(){
    try{
        //Pede a palavra ao nosso servidor
        const response = await fetch ('')
    }
}