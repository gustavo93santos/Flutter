import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  var _valor = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
            Slider(
              value: _valor, 
              min: 0,
              max: 10,
              

              onChanged: (double slide){
                setState(() {
                  _valor = slide;
                });
              },
            ),

            RaisedButton(
              child: Text(
                "Salvar"
              ),
              onPressed: (){
                print("Notificações: " + _valor.toString());
              }
            )

          ],
        ),
      ),
    );
  }
}