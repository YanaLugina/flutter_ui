import 'package:flutter/cupertino.dart';
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget> [
            Container(
              width: 230,
              height: 300,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: null,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(3.0),
                      bottomLeft: Radius.circular(5.0),
                  )
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Первое сообщение, которое не влезло на экран в одну фразу',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              width: 10,
              height: 10,
              margin: EdgeInsets.fromLTRB(1, 0, 0, 1),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            Container(
              width: 5,
              height: 5,
              margin: EdgeInsets.fromLTRB(1, 0, 0, 5),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50)
              ),
            ),
          ],
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
