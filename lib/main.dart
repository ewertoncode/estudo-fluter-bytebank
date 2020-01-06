import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
        )
    );
  }

}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar transferência'),),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: TextStyle(
              fontSize: 24.0
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.move_to_inbox),
              labelText: 'Número da conta',
              hintText: '0000'
            ),
            keyboardType: TextInputType.number,
            maxLength: 5
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: TextStyle(
              fontSize: 24.0
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.monetization_on),
              labelText: 'Valor',
              hintText: '0.00'
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        
        RaisedButton(
          child: Text('Confirmar'),
        )
      ],)
    );
  }

}

class ListaTransferencias extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(title: Text('Transferências')),
       body: Column(
        children: <Widget>[
            ItemTransferencia(Transferencia(100, 1000)),
            ItemTransferencia(Transferencia(200, 1000)),
          ]),
        floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
          ),
    );
     
  }
  
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    
    return Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(_transferencia.valor.toString()),
              subtitle: Text(_transferencia.numeroConta.toString()),
            )
          );
  }

}

class Transferencia {
  final double valor;
  final double numeroConta;

  Transferencia(this.valor, this.numeroConta);
}