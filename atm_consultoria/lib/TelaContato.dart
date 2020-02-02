import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos Contatos",
                      style: TextStyle(
                        fontSize: 20,
                        //color: Colors.deepOrange,
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "atendimento@atmconsultoria.com.br",
                  textAlign: TextAlign.justify,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Telefone: (99) 9999-9999",
                  textAlign: TextAlign.justify,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}