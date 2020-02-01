import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _notificacoes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            

          SwitchListTile(
              title: Text(
                "Receber Notificações"
              ),
              value: _notificacoes, 
              onChanged: (bool valor){
                setState(() {
                  _notificacoes = valor;
                });
              }
            ),

            /*Switch(
              value: _notificacoes, 
              onChanged: (bool valor){
                setState(() {
                  _notificacoes = valor;
                });
              }
            ),
            Text("Receber Notificações?"),*/

            RaisedButton(
              child: Text(
                "Salvar"
              ),
              onPressed: (){
                print("Notificações: " + _notificacoes.toString());
              }
            )

          ],
        ),
      ),
    );
  }
}