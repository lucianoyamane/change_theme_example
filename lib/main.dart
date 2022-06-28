import 'package:change_theme_example/bloc/theme_bloc.dart';
import 'package:change_theme_example/bloc/theme_state.dart';
import 'package:change_theme_example/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const ThemeSwitcherApp());

class ThemeSwitcherApp extends StatelessWidget {
  const ThemeSwitcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeThemeBloc(),
      child: BlocBuilder<ChangeThemeBloc, ChangeThemeState>(
          builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: state.name,
          theme: state.changeTheme,
          home: const HomePage(),
        );
      }),
    );
  }
}
