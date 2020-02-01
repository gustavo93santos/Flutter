import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _logoApp = AssetImage("images/logo.png");
  var _resultado = "";

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  void _calcular(){

    double precoAlcool = double.tryParse(_controllerAlcool.text.replaceAll(',', '.'));
    double precoGasolina = double.tryParse(_controllerGasolina.text.replaceAll(',', '.'));

    if(precoAlcool == null || precoGasolina == null){
      setState(() {
        _resultado = "Um dos valores está nulo!";
      });
    }else{
      if ( (precoAlcool/precoGasolina) >=0.7 ){
        setState(() {
          _resultado = "Abasteça com Gasolina!!";;
        });
      }else{
        setState(() {
          _resultado = "Abasteça com Alcool!!";
        });
      }
    }
    //_limparCampos();
  }

  void _limparCampos(){
    _controllerAlcool.text = "";
    _controllerGasolina.text = "";
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image(image: this._logoApp,),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Text(
                  "Quer uma ajuda para escolher qual é a melhor opção?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço alcool, ex: 3.29",
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerAlcool,
              ),

              TextField(              
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Gasolina, ex: 3.89",
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerGasolina,            
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: _calcular,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _resultado,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}