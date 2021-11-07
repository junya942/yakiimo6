import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team6/src/home.dart';
import '../main.dart';

import 'dart:math' as math;

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(children: [
        //画像挿入
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('lib/images/Group 21 (1).png'),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          backgroundColor: Colors.green.withOpacity(0),
          body: Center(
            child: Container(
              // padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(top: 0, bottom: 0, left: 300, right: 0),
                    width: double.infinity,
                    // ユーザー登録ボタン
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
