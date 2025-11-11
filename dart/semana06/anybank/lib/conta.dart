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
    print("O saldo atual de ${titular}, é: R\$$_saldo");
  }
}
