import 'package:flutter/material.dart';
import 'package:private_photo_album/Fingerprint/authenticate.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

class ThemeChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
                child: Text('Dark Theme'),
                onPressed: () => _themeChanger.setTheme(ThemeData.dark())),
            FlatButton(
                child: Text('Light Theme'),
                onPressed: () => _themeChanger.setTheme(ThemeData.light())),
            Center(
              child: MaterialButton(
                child: Text("Next Page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
