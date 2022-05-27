// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Container Principal
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          //Inserção da Logo
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/logo2.png'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              // Primeira Caixa - Inserir usuário
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              // Segunda Caixa Inserir Senha
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              // Container Botão recuperar senha
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black54),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              // Caixa de Botão Entrar
              height: 50,
              width: 10,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Color.fromARGB(211, 182, 5, 5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'ENTRAR',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              //CONTAINER DO CADRASTRA-SE
              height: 40,
              child: TextButton(
                child: Text(
                  "CADRASTRE-SE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
