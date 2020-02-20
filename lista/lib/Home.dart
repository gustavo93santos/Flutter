import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){
    _itens = [];
    for(int i=0; i<10; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo $i Lorem ipsum dolor sit amet";
      item["Descricao"] = "Descrição $i Ipsum dolor sit amet";

      _itens.add(item);
    }

  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            return ListTile(
              title: Text(indice.toString()),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text(_itens[indice]["titulo"]),
                    );
                  }
                );
              },
            );
          }
        )
      ),
    );
  }
}