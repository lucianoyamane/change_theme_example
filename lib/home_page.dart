import 'package:change_theme_example/theme_selector_page.dart';
import 'package:change_theme_example/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final ThemeBloc themeBloc;

  HomePage({Key? key, required this.themeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.list,
            ),
            tooltip: 'Theme selector',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ThemeSelectorPage(
                        themeBloc: themeBloc,
                      )));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // do nothing
        },
        child: const Icon(
          Icons.done,
        ),
      ),
      body: const Center(
        child: Text(
          'Wow! Flutter is awesome!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
