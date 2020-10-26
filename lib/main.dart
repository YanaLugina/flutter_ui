import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tatata tata tata'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({ this.title });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Container(
        width: 200,
        height: 250,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(),
        ),
        child: Text(
          'New text dddd dddsa ddd',
          style: TextStyle(fontSize: 30),
        ),
      ),
      /*Center(
        child: Text(
          'New text for tatata',
          style: TextStyle(fontSize: 30),
        ),
      ),*/
      /*Align(
        alignment: Alignment.center,
        child: Text(
          'New text from tatata',
        ),
      ),*/
      /*Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'New text from tatata',
        ),
      ),*/

    );
  }
}
