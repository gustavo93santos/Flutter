import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _sexo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
            /*Text("Masculino"),
            Radio(
              value: "M", 
              groupValue: _sexo, 
              onChanged: (String escolha){
                setState(() {
                  _sexo = escolha;
                });
              }
            ),

            Text("Feminino"),
            Radio(
              value: "F", 
              groupValue: _sexo, 
              onChanged: (String escolha){
                setState(() {
                  _sexo = escolha;
                });
              }
            ),*/

            RadioListTile(
              title: Text("Masculino"),
              value: "M",
              groupValue: _sexo, 
              onChanged: (String escolha){
                setState(() {
                  _sexo = escolha;
                });
              }
            ),

            RadioListTile(
              title: Text("Feminino"),
              value: "F", 
              groupValue: _sexo, 
              onChanged: (String escolha){
                setState(() {
                  _sexo = escolha;
                });
              }
            ),

            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              onPressed: (){
                print("Sexo: " + _sexo);
              }
            )

          ],
        ),
      ),
    );
  }
}