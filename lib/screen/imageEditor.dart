import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_editor_pro/image_editor_pro.dart';

class ImageEditor extends StatefulWidget {
  @override
  _ImageEditorState createState() => _ImageEditorState();
}

class _ImageEditorState extends State<ImageEditor> {
  Future<void> getimageditor() {
    final geteditimage =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageEditorPro(
        appBarColor: Colors.blue,
        bottomBarColor: Colors.blue,
      );
    })).then((geteditimage) {
      if (geteditimage != null) {
        setState(() {
          _image = geteditimage;
        });
      }
    }).catchError((er) {
      print(er);
    });
  }

  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Bizup App'),
      ),
      body:
          /* RaisedButton(
        onPressed: () {
          getimageditor();
        },
        child: new Text("Open Editor"),
      ),*/
          //: Center(
          //   child: Image.file(_image),
          //),
          Center(
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('asset/sea.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment(0.0, 0.0),
          // color: Colors.black
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.share),
        onPressed: () {
          getimageditor();
          //_image = null;
          setState(() {});
        },
      ),
    );
  }
}
