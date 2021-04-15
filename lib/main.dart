import 'package:flutter/material.dart';

void main() => runApp(
      myApp()
    );
    
    class Formulario extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferencia'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                labelText: 'Numero',
                hintText: '00000',
                ),
                keyboardType: TextInputType.number,
              ),
              
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(            
              style: TextStyle(
              fontSize: 24.0,
              ),
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: '00000',
                )
              ,),
          ),
          RaisedButton(onPressed: null)
        ],
      )
    );
  }

}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      MaterialApp(
  home: Scaffold(
    // body: ListaFuncoes(),
    body: Formulario(),
      ),
    );
  }

}

class ListaFuncoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
        children: [
          ItemFuncao(Transferencia(100.00,00087765)),
          ItemFuncao(Transferencia(100.00,00087765)),
          ItemFuncao(Transferencia(100.00,0032)),
        ],
      ),
        appBar: AppBar(
          title: const Text('Aplicativo Sensor Passos'),
        ),
        // ignore: missing_required_param
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
    );
  }
  
}
class ItemFuncao extends StatelessWidget{
  final Transferencia _transferencia;

  const ItemFuncao( this._transferencia);
  
  @override
  Widget build(BuildContext context) {
    return  Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(_transferencia.title.toString()),
            subtitle: Text(_transferencia.subt.toString()
            ),
            )
          );
  }

}

class Transferencia{
  final double title;
  final int subt;
  Transferencia(this.title, this.subt);
}