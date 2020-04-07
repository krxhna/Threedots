import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondRoute()));
            }),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: FloatingActionButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondRoute()));
              }),
            ),
            FloatingActionButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondRoute()));
            }),
          ],
        ),
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: new ListView.builder(
            itemCount: litems.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  litems[Index],
                  style: TextStyle(fontSize: 30),
                ),
              );
            })
        // body: Center(
        //   child: RaisedButton(
        //     child: Text('Open route'),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => SecondRoute()),
        //       );
        //     },
        //   ),
        // ),
        );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
