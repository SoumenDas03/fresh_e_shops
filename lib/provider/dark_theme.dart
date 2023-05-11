import 'package:flutter/material.dart';
import 'package:project1/provider/light_theme.dart';
import 'package:provider/provider.dart';

import 'theme_changer.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dark mode trial"),
        
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
            isDarkMode ? 
            Image.network("https://www.fcbarcelona.com/fcbarcelona/photo/2020/02/22/dbeab760-3b9c-4a41-b205-9dd788f21314/WhatsApp-Image-2020-02-22-at-17.52.30-1-.jpeg") : 
            Image.network("https://th.bing.com/th/id/R.438e3a87fb746a36d11abe341e5c46f6?rik=3ahpg%2bpkIX3eSw&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2fc%2f1%2f5%2f877056-wallpaper-lionel-messi-2018-2048x1536-hd-for-mobile.jpg&ehk=5T%2bC66j5Mo%2fqX%2fnXQcnnn8EgaJlkzGXANDxz3SiyOc0%3d&risl=&pid=ImgRaw&r=0"),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const lightTheme(),
                    ));
                },
              child: Text("data"))
        ],
      ),
    );
  }
}
