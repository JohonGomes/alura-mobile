//Criando uma classe
abstract class Conta {
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

//Mixin

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor) {
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimeSaldo();
    }
  }

  @override
  void receber(double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimeSaldo();
  }
}

class ContaInvestimento extends Conta with Imposto {
  ContaInvestimento(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
       imprimeSaldo();
    }
  }

  @override
  void receber(double valor) {
    _saldo += valor - valorTaxado(valor);
     imprimeSaldo();
  }
}
