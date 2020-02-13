import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:business_monsters/blocs/theme.dart';
import 'package:business_monsters/home.dart';

void main() 
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: Home(),
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
