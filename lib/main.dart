import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget> [
            Stack(
              alignment: Alignment.topLeft,
              children: <Widget> [
                Icon(Icons.airplay, color: Colors.red, size: 150.0),
                Positioned.directional(
                  textDirection: TextDirection.rtl,
                  child: Container(
                      color: Colors.lightGreen,
                      width: 300,
                      child: Stack (
                        clipBehavior: Clip.hardEdge,
                        children: <Widget>[
                          Image.network('https://avatars1.githubusercontent.com/u/37318317?s=88&u=a9ccaeb50bbb3b82aad1161418f5a4602dd50ef9&v=4', width: 200, height: 100,),
                          Text(
                              'Здась полно всякого текста который можно'
                              'обрезать и перевести на'
                              'другую строку, но не тут то было'
                              'что-то пошло не так',
                              style: TextStyle(
                                backgroundColor: Colors.blue,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Expanded(
                      child: Text(
                        'Первое сообщение, которое не влезло на экран в одну фразу',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Icon(
                              Icons.adjust,
                              color: Colors.red,
                            ),
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child:Icon(
                              Icons.adjust,
                              size: 10,
                              color: Colors.green,
                            ),
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Icon(
                              Icons.adjust,
                              color: Colors.blue,
                            ),
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Image.network('https://avatars1.githubusercontent.com/u/37318317?s=88&u=a9ccaeb50bbb3b82aad1161418f5a4602dd50ef9&v=4'),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
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
            Align(
              alignment: Alignment(1, 1),
              child: Container(
                width: 5,
                height: 5,
                margin: EdgeInsets.fromLTRB(1, 0, 0, 5),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50)
                ),
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
