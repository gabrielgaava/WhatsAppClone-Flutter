import 'package:flutter/material.dart';
import 'whatsapp_home.dart';

//Essa é basicamente a função de que inicializa o app quando é aberto e tal
void main() => runApp(new MyApp());

//O Main usualmente é Stateless, pois ele por sí só não vai alterar seu estado
//Mas sim seus elementos que a compoem
class MyApp extends StatelessWidget {
  @override
  //Aqui é onde ele "Constroi as coisas" com a chamada do BUILD
  Widget build(BuildContext context) {
    //Ele retornar um MaterialApp que é um Widget
    //Que possibilita voce juntar varios Material Components
    return new MaterialApp(
      //Titulo da Aplicação
      title: "WhatsApp",
      //Qual sera o tema da Aplicação
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      //Aqui é onde escolhemos qual sera o "componente de entrada" da aplicação
      //No caso, eu criei um novo Widget para ser nossa home
      home: new WhatsAppHome(),
    );
  }
}

