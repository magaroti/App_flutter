
import 'package:flutter/material.dart';
import 'package:faxyma/button_retangulo_onpresses.dart';
import 'package:faxyma/main.dart';


class CreateAccont extends StatefulWidget {
  @override
  _CreateAccontState createState() => _CreateAccontState();
}

class _CreateAccontState extends State<CreateAccont> {
  bool _Mostrar_Senha = false;
  var _Email;
  var _Senha;
  var _Nome;
  var _Sobrenome;
  var _Confirmar;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
    child: Card(
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black,fontSize: 20),
                  decoration: InputDecoration(
                      icon: Icon(Icons.person,color: Colors.blueAccent,),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.lightBlue)),
                  controller: _Email,
                ),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.people,color: Colors.blueAccent,),
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.lightBlue),
                  ),
                  controller: _Nome,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.people,color: Colors.blueAccent,),
                    labelText: "Sobrenome",
                    labelStyle: TextStyle(color: Colors.lightBlue),
                  ),
                  controller: _Sobrenome,
                ),
                TextFormField(
                  obscureText: !this._Mostrar_Senha,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.security,color: Colors.blueAccent,),
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.lightBlue),

                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: this._Mostrar_Senha ? Colors.blue[100]: Colors.lightBlue,
                      ),
                      onPressed: () {
                        setState(() {
                          this._Mostrar_Senha = !this._Mostrar_Senha;
                        });
                      },
                    ),

                  ),
                  controller: _Senha,
                ),
                  TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.security,color: Colors.blueAccent, ),
                    labelText: "Confirmar Senha",

                    labelStyle: TextStyle(color: Colors.lightBlue),
                  ),
                    controller: _Confirmar,
                  ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  child: Text('Criar Conta', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                    setState(() {

                    });
                    },
                ),

              ],
            ),
          ),
      ),
    ),
    ),
    );
  }
}
