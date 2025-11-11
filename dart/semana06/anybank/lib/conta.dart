//Criando uma classe
class Conta {
  // atributos da classe
  String titular;
  double
  _saldo; // para atribuir uma variavel privada usa-se o _ antes do nome da variavel.

  //função construtora
  Conta(this.titular, this._saldo);

  // Funções - Métodos
  void receber(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }

  void imprimeSaldo() {
    print("O saldo atual de $titular, é: R\$$_saldo");
  }
}

//Usando herança para usar atributos da classe Conta
class ContaCorrente extends Conta {
  double emprestimo = 300;
  ContaCorrente(super.titular, super._saldo);

  //sobrescrita de método
  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;
  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}
