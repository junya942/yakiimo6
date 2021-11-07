import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team6/login/login-form.dart';
import 'package:team6/src/home.dart';
import '../main.dart';

import 'dart:math' as math;

import '../question.dart';

class Sub extends StatefulWidget {
  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(children: [
        //画像挿入
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('lib/images/Group 20.png'),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          backgroundColor: Colors.green.withOpacity(0),
          body: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 520, bottom: 0, left: 300, right: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white.withOpacity(0),
                      ),
                      child: Text(
                        'ログイン',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0),
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quizzler(),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
