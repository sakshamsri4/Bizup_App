import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String _string = 'Enter your Search';

  void submitted(String str) {
    _string = str;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // title: Text('Enter your search ?'),
        title: TextField(
          decoration: InputDecoration(
            icon: new Icon(Icons.search),
            // border: OutlineInputBorder(),
            hintText: 'Enter your Search',
            //  leading: Icon()
          ),
          onSubmitted: (text) {
            setState(() {
              if (text != null)
                submitted(text);
              else
                _string = 'Enter your search';
            });
          },
        ),
        // Icon(Icons.search),
      ),
      body: Center(
        child: Container(
          alignment: Alignment(0.0, 0.0),
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                //color: Colors.redAccent,
                child: Text(
                  _string,
                  style: TextStyle(
                      height: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey,
                      fontSize: 25.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
              //TODO: Enter more screens   FloatingActionButton(
              /*child: Icon(
                  Icons.crop_square,
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
