import 'package:anybank/conta.dart';

void main() {
  // instanciando / criando  um objeto
  ContaCorrente contaCris = ContaCorrente("Cris", 4000);
  ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000);

  ContaEmpresa contaMatheus = ContaEmpresa("Matheus", 2000);
  ContaInvestimento contaRoberta = ContaInvestimento("Roberto", 2000);

  // contaCris.imprimeSaldo();
  // contaCris.enviar(4300);

  // contaDenize.imprimeSaldo();
  // contaDenize.enviar(4300);

  // contaDenize.calculaRendimento();
  // contaDenize.imprimeSaldo();

  contaMatheus.enviar(1000);
  contaRoberta.receber(1000);
}
