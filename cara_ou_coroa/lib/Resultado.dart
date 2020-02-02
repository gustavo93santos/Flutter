import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String moeda;

  Resultado(this.moeda);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  void _voltar(){
    
  }

  @override
  Widget build(BuildContext context) {

    var caminhaImagem;

    if (widget.moeda == "cara") {
      caminhaImagem = "images/moeda_cara.png";
    }else{
      caminhaImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhaImagem),
            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}