import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_is_dark_color_hsp/flutter_is_dark_color_hsp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter is Dark HSP Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: _color
              ),
              width: MediaQuery.of(context).size.width * 0.6,
              height: 100,
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(
                    color: isDarkHsp(_color)? Colors.white: Colors.black,
                    fontSize: 32
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomColor,
        tooltip: 'Random Color',
        child: Icon(Icons.shuffle),
      ),
    );
  }

  void _generateRandomColor() {
    Random _random = Random();
    setState(() {
      _color = Color.fromARGB(255, _random.nextInt(255), _random.nextInt(255), _random.nextInt(255));
    });
  }
}
