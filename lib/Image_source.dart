import 'package:flutter/material.dart';
import 'package:private_photo_album/Images/add_image.dart';
import 'package:private_photo_album/Images/camera.dart';

class ImageSource extends StatefulWidget {
  @override
  _ImageSourceState createState() => _ImageSourceState();
}

class _ImageSourceState extends State<ImageSource> {
  Future<void> showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Select One'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                      child: Text('Gallery'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddImage()),
                        );
                      }),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child: Text('Camera'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddImage1()),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  showChoiceDialog(context);
                },
                child: Text('Select Image'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
