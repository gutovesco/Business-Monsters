import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Business_Monsters/blocs/theme.dart';
import 'package:Business_Monsters/login-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: LoginScreen(),
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
