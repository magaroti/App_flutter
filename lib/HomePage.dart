import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flare_dart/actor.dart';
import 'package:faxyma/button_retangulo_onpresses.dart';
import 'PageLoading.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var listaPaginas = [Buscando(), Add(),  Config()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("FaxyMa",),
        centerTitle: true,
      ),
      body: _BuildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.add_circle),
            title: Text("Contratar"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.settings),
            title: Text("Configurações"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
      ),

    drawer: Drawer(
      child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
      DrawerHeader(
      child:Container(
        width: 200,
        height: 200,
        child: FlareActor("lib/assets/Map.flr", animation: "default"),
      ),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
    ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          title: Text('Conta', style: TextStyle(fontSize: 21)),
          onTap: () {
          },
        ),
      ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Pagamentos', style: TextStyle(fontSize: 20)),
                onTap: () {
                },
              ),
            )
    ]),
    ),
    );
  }
  _BuildBody() {
    return SafeArea(
      child: listaPaginas[_selectedIndex],

    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
    );
  }
}

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {

  final _Controler = TextEditingController();
  String _Name;
  String _NumberPhone;
  String _Email;
  String _Senha;

  String _ValidateName(String value) {
    if (value.isEmpty) return "Um Nome é Requerido";
    final RegExp nameExp = new RegExp(r'[A-Za-z ]+$');
    if (!nameExp.hasMatch(value))
      return 'Por Favor Digite Corretamente.';
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.person, color: Colors.lightBlue,),
                      hintText: "Digite Seu Nome:",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      labelText: "Nome:",
                      labelStyle: TextStyle(color: Colors.lightBlue),
                    ),
                    cursorColor: Colors.lightBlue,
                    onChanged: (String value) {
                      this._Name = value;
                    },
                    validator: _ValidateName,
                  ),
                  SizedBox(height: 24.0),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.person, color: Colors.lightBlue,),
                      hintText: "Digite Seu Sobrenome:",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      labelText: "Sobrenome:",
                      labelStyle: TextStyle(color: Colors.lightBlue),
                    ),
                    cursorColor: Colors.lightBlue,
                    onChanged: (String value) {
                      this._Name = value;
                    },
                    validator: _ValidateName,
                  ),
                  SizedBox(height: 24.0),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.phone, color: Colors.lightBlue,),
                      hintText: "Digite Seu Número",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      labelText: "Telefone:",
                      labelStyle: TextStyle(color: Colors.lightBlue),
                    ),
                    cursorColor: Colors.lightBlue,
                    onChanged: (String value) {
                      this._Name = value;
                    },
                  ),
                  SizedBox(height: 24.0),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      icon: Icon(Icons.email, color: Colors.lightBlue,),
                      hintText: "Digite Seu Email:",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      labelText: "Email:",
                      labelStyle: TextStyle(color: Colors.lightBlue),
                    ),
                    cursorColor: Colors.lightBlue,
                    onChanged: (String value) {
                      this._Name = value;
                    },
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                      filled: true,
                      icon: Icon(Icons.message, color: Colors.lightBlue,),
                      hintText: "Conte um Pouco Sobre Voce.",
                      hintStyle: TextStyle(color: Colors.lightBlue),
                      labelText: "Conte sobre Voce:",
                      labelStyle: TextStyle(color: Colors.lightBlue),
                    ),
                    cursorColor: Colors.lightBlue,
                    maxLines: 5,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
    label: Text("Adicionar"),
        backgroundColor: Colors.lightBlue,
        icon: Icon(Icons.add,),
        onPressed: () {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Check()));
      });
        },

    ),
    );
  }
}



class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListTile(
        title: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child:
                      RawMaterialButton(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.account_circle, size: 50, color: Colors.lightBlue,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text("Conta", style: TextStyle(fontSize: 21, color: Colors.lightBlue),),
                            ),
                          ],
                        ),
                        onPressed: (){
                          setState(() {

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // retorna um objeto do tipo Dialog
                                return AlertDialog(
                                  title: Text("Conta"),
                                  content: Container(
                                    height: 150,
                                    width: 150,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: RawMaterialButton(
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Icon(Icons.account_circle, size: 50,color: Colors.indigoAccent,),
                                                ),
                                                Text("Adicionar Conta", style: TextStyle(fontSize: 23),),
                                              ],
                                            ),
                                            onPressed: () {},

                                          ),
                                        ),

                                        RawMaterialButton(
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Icon(Icons.remove_circle, size: 50, color: Colors.red,),
                                              ),
                                              Text("Remover Conta", style: TextStyle(fontSize: 23),),
                                            ],
                                          ),
                                          onPressed: () {},

                                        ),
                                      ],
                                    ),
                                  ),


                                  actions: <Widget>[
                                    // define os botões na base do dialogo
                                    new FlatButton(
                                      child: new Text("Fechar", style: TextStyle(color: Colors.indigoAccent),),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );

                              },
                            );
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child:
                      RawMaterialButton(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.person, size: 50, color: Colors.lightBlue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text("Perfil", style: TextStyle(fontSize: 21, color: Colors.lightBlue),),
                            ),
                          ],
                        ),
                        onPressed: () {},

                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child:
                      RawMaterialButton(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.format_paint, size: 50, color: Colors.lightBlue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text("Tema", style: TextStyle(fontSize: 21, color: Colors.lightBlue),),
                            ),
                          ],
                        ),
                        onPressed: () {
                          setState(() {

                            showDialog(
                                context: context,
                                builder: (BuildContext context){

                                  return AlertDialog(
                                    title: Text("Temas"),
                                    content: Container(
                                      width: 150,
                                      height: 150,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            child: RawMaterialButton(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.palette, size: 50, color: Colors.grey[200],),
                                                  Text("Branco", style: TextStyle(fontSize: 21),),
                                                ],
                                              ),
                                              onPressed: () {},
                                            ),

                                          ),
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            child: RawMaterialButton(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(Icons.palette, size: 50, color: Colors.black,),
                                                  Text("Preto", style: TextStyle(fontSize: 21),),
                                                ],
                                              ),
                                              onPressed: () {},
                                            ),

                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text("Fechar", style: TextStyle(color: Colors.indigoAccent),),
                                        onPressed: () {
                                          setState(() {
                                            Navigator.of(context).pop();
                                          });
                                        },
                                      )
                                    ],
                                  );
                                }
                              );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ),
        ),
    );

  }
}
class Buscando extends StatefulWidget {
  @override
  _BuscandoState createState() => _BuscandoState();
}

class _BuscandoState extends State<Buscando> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: FlareActor("lib/assets/Engrenagem_flutter.flr", animation: "Girando2"),
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context);

    });
  }

}

