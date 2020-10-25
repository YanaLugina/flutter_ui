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
      body: Center(
        child: Text(
          'New text for tatata',
        ),
      ),
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
