import 'package:flutter/material.dart';
import 'package:myapp/pages/calls.dart';
import 'package:myapp/pages/camera.dart';
import 'package:myapp/pages/chat.dart';
import 'package:myapp/pages/status.dart';



//Inicialmente é importante saber que ESTE WIDGET é STATEFULL,
//Ou seja, ele possui mudança de estado. Para isso é necessario
//Que sua classe seja um filho de StatufullWidget

class WhatsAppHome extends StatefulWidget {

  //Aqui é onde é criado os estados do nosso Widget
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}


//Aqui setados algumas "mudanças de estado" que nosso componente permite
class _WhatsAppHomeState extends State<WhatsAppHome> 
    //Fornece um único Ticker que está configurado para apenas marcar enquanto 
    //a árvore atual está ativada, conforme definido pelo TickerMode.
    with SingleTickerProviderStateMixin {

      //Isso vai "cuidar" da indexação da TabView correspondente a TabBar
      TabController _tabController;

      @override
        void initState(){
          super.initState();
          //Então dizemos que ela começa no Index 1 - No nosso caso, seria a página CHATS
          //E que tem tamanho de 4
          _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
        }

//Aqui é onde construitos a  ESTRUTURA de verdade deste Widget
  @override
  Widget build(BuildContext context) {
    //Primeiramente começamos com um SCAFFOLD, que basicamente fornece a ESTRUTURA
    //para mostrar Drawers(Menus), SnackBars, botões e etc...
    return new Scaffold(
      //Então criamos uma APP bar para esta página
      appBar: new AppBar(
        //Cujo seu titulo sera WhatsApp
        title: new Text("WhatsApp"),
        //Isso controla o tamanho da sombra abaixo da appBar
        elevation: 0.7,
        //E criamos então uma TabBar no parte inferior da APPBAR
        bottom: new TabBar(
          //Definimos seu controller (Que fizemos lá em cima)
          controller: _tabController,
          //Atribuimos uma cor pra identificar a Tab selecionada
          indicatorColor: Colors.white,
          //E então definimos quais são as Tabs que ele possui
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        //O Atributo action coloca elementos na Lateral do APPBAR
        //São asqueles botoes de ação que todo app usualmente possui
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
          new Icon(Icons.more_vert),
        ],
      ),
      //Repare que já Terminamos de configurar o Cabeçalho (AppBar)
      //Agora iremos para o Corpo do nosso app
      //Precisamos atribuir uma nova TabBarViw, que vai "Linkar" a View 
      //Correspondente a Tab selecionada
      body: new TabBarView(
        //Necessario termos o controller que nossa TabBar utiliza
        controller: _tabController,
        //E então declaramos quais são seus "filhos", sendo cada filho uma VIEW
        children: <Widget>[
          new CameraScreen(), //---> camera.dart
          new ChatScreen(), //---> chat.dart (Importante)
          new StatusScreen(), //---> status.dart
          new CallsScreen(), //---> calls.dart
        ],
      ),
      //Por ultimo, adicionamos um botão flutuante no Scaffold
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
          ),
        //Essa é a função chamada quando o botão é apertado
        //A principio ele so vai printar no CONSOLE
        onPressed: () => print("Open Chats"),
      ),
    );
  }
}