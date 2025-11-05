import 'dart:io';

void main() {
  List<String> notas = <String>[];
  menu(notas);
}

//criando uma função que devolve alguma coisa 
String getComando() {
  //Mostra o usuário as opções que ele poderá escolher.
  print("Digite um comando: 1 - Adicionar Nota, 2 - Listar Notas, 3 - Sair");
  //Criando uma lista de Strings com os valores que o user pode escolher.
  List<String> comandos = <String>["1", "2", "3"];
  //Cria uma variavel do tipo string e permite que ela seja nula
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido");
    getComando();
  }

  return entrada!;
}

// criando função para adicionar uma nota
List<String> adicionarNota(List<String> notas) {
  print("Escreva uma nota:");
  String? nota = "";
  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não adicionar uma nota vazia.");
    adicionarNota(notas);
  }

  notas.add(nota!);

  return notas;
}

// criando função para listar as notas
void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

// criando função menu, que traz todas as funções 
void menu(List<String> notas) {
  print("");
  String comando = getComando();
  print("");

  switch(comando){
    case "1":
    adicionarNota(notas);
    menu(notas);

    case "2":
    listarNotas(notas);
    menu(notas);

    case "3":
    print("Aplicativo encerrado!");
  }
}

