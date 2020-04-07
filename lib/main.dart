import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}



class MyApp extends StatelessWidget {
  var container_main = Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.red,Colors.amber])),
                    height: 60,
                    width: 60,
                  );
  var litems = ['yo', 'my', 'ass'];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child:container_main ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: container_main),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: container_main),
            )
          ],
        ),
        body: new ListView.builder(
            itemCount: litems.length,
            itemBuilder: (BuildContext ctxt, int Index) {
              return new Text(litems[Index]);
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
