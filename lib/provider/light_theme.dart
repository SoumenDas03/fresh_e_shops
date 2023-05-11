import 'package:flutter/material.dart';
import 'package:project1/provider/theme_changer.dart';
import 'package:provider/provider.dart';

class lightTheme extends StatefulWidget {
  const lightTheme({super.key});

  @override
  State<lightTheme> createState() => _lightThemeState();
}

class _lightThemeState extends State<lightTheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Light mode trial"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
         
        ],
      ),
    );
  }
}
