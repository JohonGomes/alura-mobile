// 1.Importando as ferramentas
const express = require('express');
const cors = require('cors');

// 2.Inicializando o servidor
const app = express();
const port = 3000; // O servidor que vai rodar na porta 3000

// 3. Configurações do servidor
app.use(cors()); // Permite que o front-end acesse este back-end

// 4. Lista de palavras secretas
const bancoDePalavras = ['IDEA', 'SUTIL', 'VIGOR', 'PODER', 'SONHO', 'LIVRO','FORTE', 'MUNDO'];

// 5. A rota principal da nossa API
app.get('/palavra', (req, res) => {
    // Sorteia um número aleatório baseado no tamanho da nossa lista.
    const indiceAleatorio = Math.floor(Math.random() * bancoDePalavras.length);

    // Pega a palavra correspondente ao indice sorteado
    const palavraSorteada = bancoDePalavras[indiceAleatorio];

    // Envia a palavra sorteada como resposta
    res.json({palavra: palavraSorteada});
})

// 6. "Ligando" o servidor
app.listen(port, () => {
    console.log(`Servidor rodando com sucesso em http://localhost:${port}`)
})
