import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team6/src/home.dart';
import '../main.dart';

import 'dart:math' as math;

class Aba extends StatefulWidget {
  @override
  _AbaState createState() => _AbaState();
}

class _AbaState extends State<Aba> {
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
            image: AssetImage('lib/images/Group 19 (1).png'),
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
                children: [],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
