import 'package:anybank/conta.dart';

void main() {
  // instanciando / criando  um objeto
  Conta contaJohon = Conta("Johon", 1000);
  Conta contaFrederico = Conta("Frederico", 2000);
  ContaCorrente contaCris = ContaCorrente("Cris", 4000);
  ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000);

  List<Conta> contas = <Conta>[contaJohon, contaFrederico];

  //acessando as propriedades
  // print(contaJohon.titular);
  // print(contaJohon.saldo);

  // for (Conta(classe) conta (nome da variavel, poder ser qualquer uma) in conta (nome da Lista que criei))
  for (Conta conta in contas) {
    conta.imprimeSaldo();
    // print(conta.titular);
    // print(conta._saldo);
  }

  //alterando o saldo da conta, atribuindo um novo valor a ele.

  contaFrederico.receber(3000);

  print("--- Recebendo um valor na conta ---");
  // receber(contaJohon, 500);
  contaJohon.receber(500);

  print("--- Enviando um valor para outra conta ---");
  // enviar(contaJohon, 200);
  contaJohon.enviar(200);

  contaCris.imprimeSaldo();
  contaCris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);

  contaDenize.calculaRendimento();
  contaDenize.imprimeSaldo();
}
