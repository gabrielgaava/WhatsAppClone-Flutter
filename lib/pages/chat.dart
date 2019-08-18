import 'package:flutter/material.dart';

//Antes de Iniciar a leitura acesse o arquivo cahtModel.dart em models
//Para entender oque ta acontecendo aq
import 'package:myapp/models/chatModel.dart'; 
import 'package:myapp/pages/private.dart';


//Inicialmente é importante saber que ESTE WIDGET é STATEFULL,
//Ou seja, ele possui mudança de estado. Para isso é necessario
//Que sua classe seja um filho de StatufullWidget

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

//Acontece que nesse Widget ele é TOTALMENTE dependente
//Dos dados de entrada, que seria nosso dummyData
class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    //Vamos retornar uma ListView, que basicamente é o widget de rolagem mais comumente usado. 
    //Ele exibe seus filhos um após o outro na direção de rolagem. 
    //Os "Children" são obrigadas a preencher o ListView.
    return new ListView.builder(
      //Definimos o número de elementos que nossa ListView vai possuir
      itemCount: dummyData.length,
      //Então dizemos a partir DOQUE ele vai construir a lista
      //Isso aqui é praticamente um FOR com o indice I. Para cada 
      //Elemento ele criara uma coluna com todos os Widgets abaixo
      itemBuilder: (context, i)=>new Column(
        //Inicialmente dizemos que esse "filho" tera um conjunto de Widgets
        children: <Widget>[
          //Colocamos um divisor, que é aquele risquinho em cima e em baixo
          //Definimos apenas sua altura
          new Divider(
            height: 10.0,
          ),
          //O titulo deste item
          new ListTile(
            //Essa é a função ativada qunado é "Clckado"
            onTap: (){
              //Basicamente ele leva para uma nova página, que seria a private.dar
              //No FLutter, a páginação é dada como uma Pilha, portanto para ir a uma página
              //Damos um push, e para voltar um PoP
              Navigator.push(context,
                //Designamos a rota que ele deve seguir
                MaterialPageRoute(builder: (context) => privateScreen())
              );
            },
            //Leading é posicionado no extremo inicio do Widget
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              //Aqui pegamos a imagem que veio do "BD"
              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
            ),
            //Criamos uma nova "Linha"
            title: new Row(
              //Separamos os elementos de forma que eles fiquem
              //Em suas extremidades (Esquerda - ESPAÇO - Direita)
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Nome da Pessoa
                new Text(dummyData[i].name, 
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                //E o tempo da menssagem
                new Text(dummyData[i].time, 
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            //Aqui seria a menssagem
            //Subtitle é usado para exibir um conteúdo ABAIXO do title
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                dummyData[i].message,
                style: new TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}