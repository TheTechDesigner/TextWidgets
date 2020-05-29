import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Text Widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            // DefaultTextStyle
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                inherit: true,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF832685),
                decorationStyle: TextDecorationStyle.wavy,
              ),
              child: Text("DefaultTextStyle"),
            ),
          ),
          // RichText, TextSpan
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RichText(
              text: TextSpan(
                  text: 'RichText',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Bold',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'Flutter'),
                  ]),
            ),
          ),
          // Text
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hello, Dear! How are you?',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Text With Overflow
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hello, Dear! How are you? Hello, Dear! How are you? Hello, Dear! How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Text.rich, TextSpan
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text.rich(TextSpan(text: 'Hello', children: <TextSpan>[
              TextSpan(
                  text: 'How', style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: 'are you?,',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ])),
          )
        ],
      ),
    );
  }
}
