import 'package:change_theme_example/home_page.dart';
import 'package:change_theme_example/themes.dart';
import 'package:flutter/material.dart';


void main() => runApp(const ThemeSwitcherApp());

class ThemeSwitcherApp extends StatelessWidget {
  const ThemeSwitcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeBloc themeBloc = ThemeBloc();
    return StreamBuilder<ThemeData>(
      initialData: themeBloc.initialTheme().data,
      stream: themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          title: 'Theme Switcher',
          theme: snapshot.data,
          home: HomePage(
            themeBloc: themeBloc,
          ),
        );
      },
    );
  }
}
