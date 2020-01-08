import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';
import 'formulario_transferencia.dart';

class ListaTransferencias extends StatefulWidget
{

  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias>
{
  @override
    @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(title: Text('Transferências')),
       body: ListView.builder(
         itemCount: widget._transferencias.length,
         itemBuilder: (context, indice) {
           return ItemTransferencia(widget._transferencias[indice]);
         },
       ),
        floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                final Future<Transferencia> future = Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormularioTransferencia();
                }));

                future.then( (transferenciaRecebida) {
                  if(transferenciaRecebida != null) {
                    setState(() {
                      widget._transferencias.add(transferenciaRecebida);
                    });
                    
                  }
                
                });

              },
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