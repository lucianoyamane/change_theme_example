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
}
