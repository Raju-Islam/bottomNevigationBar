
import 'package:flutter/material.dart';
import 'four.dart';
import 'one.dart';
import 'three.dart';
import 'two.dart';
void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.purple),
      home: new homepage(),
    ));

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _currentindex = 0;
  final pages=[
    HomePage(),
    MessagePage(),
    CallPage(),
    RadioPage(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("Home Page"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        currentIndex: _currentindex,

        items: [

          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.home),
              title: new Text("Home")),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.message), title: new Text("Message")),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.call),
              title: new Text(
                "Call",
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(Icons.radio), title: new Text("Radio")),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: pages[_currentindex],
    );
  }
}
