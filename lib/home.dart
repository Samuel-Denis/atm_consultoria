import 'package:atm_consultoria/tela_cliente.dart';
import 'package:atm_consultoria/tela_contato.dart';
import 'package:atm_consultoria/tela_empresa.dart';
import 'package:atm_consultoria/tela_servico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => TelaEmpresa()),
    );
  }

  void _abrirServico(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => TelaServico()),
    );
  }
  void _abrirCliente(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => TelaCliente()),
    );
  }
  void _abrirContato(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => TelaContato()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Image.asset("images/logo.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: _abrirEmpresa,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 0, left: 20),
                  child: Image.asset("images/menu_empresa.png"),
                ),
              ),
              GestureDetector(
                onTap: _abrirServico,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 0, left: 20),
                  child: Image.asset("images/menu_servico.png"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             GestureDetector(
               onTap: _abrirCliente,
               child:  Padding(
                 padding: EdgeInsets.only(top: 20, right: 20, bottom: 0, left: 20),
                 child: Image.asset("images/menu_cliente.png"),
               ),
             ),
              GestureDetector(
                onTap: _abrirContato,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 0, left: 20),
                  child: Image.asset("images/menu_contato.png",),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
