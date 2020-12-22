import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:private_photo_album/Theme/theme.dart';
import 'package:private_photo_album/Theme/choose_theme.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.dark()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      home: ThemeChooser(),
      theme: theme.getTheme(),
    );
  }
}
