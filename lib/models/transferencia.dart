class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);


  String toString() {
    return 'Transferência valor $valor, para conta $numeroConta';
  }
}