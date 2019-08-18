import 'package:flutter/material.dart';


class privateScreen extends StatelessWidget {
  final String nome = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage("https://ourclan.com.br/imgs/doug.jpg"),
              ),
            ),
            Expanded(
              child: Text(
                "Nome da Pessoa aqui",
              ),
            ),
            
          ],
        )
         
         
         
          /*new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage("https://ourclan.com.br/imgs/doug.jpg"),
          ),*/

      ),
    );
  }
}