import 'package:change_theme_example/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ThemeSelectorPage extends StatelessWidget {

  const ThemeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theme Selector',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () =>
                    BlocProvider.of<BlocChangeTheme>(context).add(LightThemeEvent()),
                child: const Text(
                  'Light theme',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ElevatedButton(
                  onPressed: () =>
                      BlocProvider.of<BlocChangeTheme>(context).add(DarkThemeEvent()),
                  child: const Text(
                    'Dark theme',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // DemoTheme _buildLightTheme() {
  //   return DemoTheme(
  //       'light',
  //       ThemeData(
  //           colorScheme: const ColorScheme(
  //             brightness: Brightness.light,
  //             primary: Colors.yellow,
  //             onPrimary: Colors.black,
  //             // Colors that are not relevant to AppBar in LIGHT mode:
  //             primaryVariant: Colors.grey,
  //             secondary: Colors.grey,
  //             secondaryVariant: Colors.grey,
  //             onSecondary: Colors.grey,
  //             background: Colors.grey,
  //             onBackground: Colors.grey,
  //             surface: Colors.grey,
  //             onSurface: Colors.grey,
  //             error: Colors.grey,
  //             onError: Colors.grey,
  //           )
  //       ));
  // }
  //
  // DemoTheme _buildDarkTheme() {
  //   return DemoTheme(
  //       'dark',
  //       ThemeData(
  //           colorScheme: const ColorScheme(
  //             brightness: Brightness.dark,
  //             surface: Colors.yellow,
  //             onSurface: Colors.black,
  //             // Colors that are not relevant to AppBar in DARK mode:
  //             primary: Colors.grey,
  //             onPrimary: Colors.grey,
  //             primaryVariant: Colors.grey,
  //             secondary: Colors.grey,
  //             secondaryVariant: Colors.grey,
  //             onSecondary: Colors.grey,
  //             background: Colors.grey,
  //             onBackground: Colors.grey,
  //             error: Colors.grey,
  //             onError: Colors.grey,
  //           )
  //       ));
  // }
}
