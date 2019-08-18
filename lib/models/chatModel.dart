//Esse arquivo vai SIMULAR nosso BANCO DE DADOS

//Essa sera nossa classe que "Constroi" cada um dos chats
class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  //Esse é o nosso Construtor
  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

//Aqui, eu apenas criei um Array de ChatModels
//Usualmente, esses dados costuman vir direto do banco de dados
//Atravez do backEnd e tal. Mas como nao temos nenhum BD ainda
//Criei na mão msm.

  List<ChatModel> dummyData = [
    new ChatModel(
      name: "Gustavo Vilar",
      message: "Eu amo Naruto!",
      time: "18:20",
      avatarUrl: "https://ourclan.com.br/imgs/pp.jpg",
    ),
    new ChatModel(
      name: "Toboco",
      message: "Se voce parar pra pensar, vai ver que nem sempre",
      time: "12:22",
      avatarUrl: "https://ourclan.com.br/imgs/toboco.jpg",
    ),
    new ChatModel(
      name: "Teemo",
      message: "Meu nome é Henrique",
      time: "16:40",
      avatarUrl: "https://ourclan.com.br/imgs/hi.jpg",
    ),
    new ChatModel(
      name: "Doug",
      message: "Cade o Humburginho ?",
      time: "02:55",
      avatarUrl: "https://ourclan.com.br/imgs/doug.jpg",
    ),
    new ChatModel(
      name: "David",
      message: "Vou te mandar minhas fotos",
      time: "00:00",
      avatarUrl: "https://ourclan.com.br/imgs/davi.jpg",
    )
  ];

//Agora pode voltar lá no chat.dart
