

let totaGeral = 0;
limpar();

function adicionar() {
    //1 - recuperar os valores nome, qtd, valor
    let produto = document.getElementById('produto').value
    let nomeProduto = produto.split('-')[0];
    let valorUnitario = produto.split('R$')[1];

    let quantidade = document.getElementById('quantidade').value;

    //2- calcular o preço, o nosso subtotal
    let preco = quantidade * valorUnitario

    //3 - adicionar item no carrinho
    let carrinho = document.getElementById('lista-produtos');
    carrinho.innerHTML = carrinho.innerHTML + 
    `
        <section class="carrinho__produtos__produto">
                <span class="texto-azul">${quantidade}</span>${nomeProduto}<span class="texto-azul">${valor}</span>
        </section>
        
    `
    //4 - atualizar o valor total da compra
    totaGeral = totaGeral + preco;
    let campoTotal = document.getElementById('valor-total');
    campoTotal.textContent = `R$ ${totaGeral}`;
    document.getElementById('quantidade').value = 0;
}


function limpar() {
    totaGeral = 0;
    let carrinho = document.getElementById('lista-produtos').innerHTML = '';
    document.getElementById('valor-total').textContent = 'R$ 0';
}