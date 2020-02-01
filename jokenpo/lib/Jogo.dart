import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _mensagem = "Você ainda não jogou!!";

  var _imagemApp = AssetImage("images/padrao.png");

  var _pedra = AssetImage("images/pedra.png");
  var _papel = AssetImage("images/papel.png");
  var _tesoura = AssetImage("images/tesoura.png");

  opcaoSelecionada(String escolhaUsuario){
 
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);

    var escolhaApp = opcoes[numero];

    switch( escolhaApp){
      case "pedra" :
        setState(() {
          this._imagemApp = _pedra;
        });
        break;
       case "papel" :
        setState(() {
          this._imagemApp = _papel;
        });
        break;
      case "tesoura" :
        setState(() {
          this._imagemApp = _tesoura;
        });
        break;
    }

    if(escolhaApp == escolhaUsuario){ 
      setState(() {
        this._mensagem ="Empatou";
      });
    }else if(
      (escolhaUsuario == "pedra" && escolhaApp == "tesoura")||
      (escolhaUsuario == "tesoura" && escolhaApp == "papel")||
      (escolhaUsuario == "papel" && escolhaApp == "pedra")
    ){
      setState(() {
        this._mensagem ="Você Ganhou";
      });
    }else{
      setState(() {
        this._mensagem = "Você perdeu";
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Image(image: this._imagemApp,),

          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,//Ganhou, Perdeu, Start
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              GestureDetector(
                onTap: ()=> opcaoSelecionada("pedra"),
                child: Image(image: this._pedra, height: 100,),
              ),

              GestureDetector(
                onTap: ()=> opcaoSelecionada("papel"),
                child: Image(image: this._papel, height: 100,),
              ),

              GestureDetector(
                onTap: ()=> opcaoSelecionada("tesoura"),
                child: Image(image: this._tesoura, height: 100,),
              ),
                            
            ],
          )
        ],
      ),
    );
  }
}