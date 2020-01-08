import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {

  final TextEditingController _controladorCampoConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar transferência'),),
      body: 
       SingleChildScrollView(
        child: Column(children: <Widget>[
              Editor(controlador: _controladorCampoConta, label: 'Número da conta', placeholder: '0000',),
              Editor(controlador: _controladorCampoValor, label: 'Valor', placeholder: '0.00', icon: Icons.monetization_on,),
              
              RaisedButton(
                child: Text('Confirmar'),
                onPressed: () => _criaTransferencia(context),
                
              )
            ],)
        )
      );
  }
  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if(numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}