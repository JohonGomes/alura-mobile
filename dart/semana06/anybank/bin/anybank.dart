void main() {
  // instanciando / criando  um objeto
  Conta contaJohon = Conta("Johon", 1000);
  Conta contaFrederico = Conta("Frederico", 2000);

  List<Conta> contas = <Conta>[contaJohon, contaFrederico];

  //acessando as propriedades
  // print(contaJohon.titular);
  // print(contaJohon.saldo);

// for (Conta(classe) conta (nome da variavel, poder ser qualquer uma) in conta (nome da Lista que criei))
  for (Conta conta in contas){
    print(conta.titular);
    print(conta.saldo);
  }

  //alterando o saldo da conta, atribuindo um novo valor a ele.

  print(contaFrederico.titular);
  print(contaFrederico.saldo);
  contaFrederico.saldo = 5000;

  print(contaFrederico.saldo);
}

//Criando uma classe
class Conta {
  // atributos da classe
  String titular;
  double saldo;

  //função construtora
  Conta(this.titular, this.saldo);
}


