import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'animation.dart';
import 'login/login-form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(children: [
        FadeAnimation(
          1.5,
          //画像挿入
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('lib/images/Group 23 (2).png'),
              fit: BoxFit.cover,
            )),
          ),
        ),
        Scaffold(
            backgroundColor: Colors.green.withOpacity(0),
            body: Center(
              child: Container(
                  child: Column(children: [
                FadeAnimation(
                  3,
                  Container(
                    margin:
                        EdgeInsets.only(top: 550, bottom: 0, left: 0, right: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green.withOpacity(0.6),
                      ),
                      child: Text(
                        'ログイン',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                    ),
                  ),
                ),
              ])),
            )),
      ]),
    );
  }
}
