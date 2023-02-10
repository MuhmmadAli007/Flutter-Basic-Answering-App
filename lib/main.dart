import 'dart:math';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 1;
  void state() {
    num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ball App'),
          titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(
                    Icons.info,
                  ),
                  title: Text(
                    'Tap to Ask a Question',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      state();
                    });
                  },
                  // child: Padding(
                  //   padding: const EdgeInsets.all(16.0),
                  //   child: Image.asset(
                  //     'images/ball$num.png',
                  //     width: 200,
                  //   ),
                  // )
                  child: AvatarGlow(
                    child: Image.asset('images/ball$num.png'),

                    endRadius: 300,
                    // glowColor: Colors.white,
                    // duration: Duration(milliseconds: 3000),
                  ),
                ),
              ),

              //       Expanded(child: Image.asset('images/ball$num.png'))
            ],
          ),
        ),
      ),
    );
  }
}
