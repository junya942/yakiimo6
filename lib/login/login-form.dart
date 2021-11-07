import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team6/src/home.dart';
import '../main.dart';

import 'dart:math' as math;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // メッセージ表示用
  String infoText = '';
  // 入力したメールアドレス・パスワード
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(children: [
        //画像挿入
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('lib/images/Group 6 (1).png'),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          backgroundColor: Colors.green.withOpacity(0),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // メールアドレス入力
                  Container(
                    margin: EdgeInsets.only(
                        top: 430, bottom: 0, left: 0, right: 60),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'メールアドレス'),
                      onChanged: (String value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                  ),
                  // パスワード入力
                  Container(
                    margin: EdgeInsets.only(
                        top: 100, bottom: 0, left: 70, right: 0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'パスワード'),
                      obscureText: true,
                      onChanged: (String value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    // メッセージ表示
                    child: Text(infoText),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 0, bottom: 0, left: 300, right: 0),
                    width: double.infinity,
                    // ユーザー登録ボタン
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.purple[800],
                        iconSize: 40,
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TabsExample(),
                              ));
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
