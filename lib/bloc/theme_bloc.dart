import 'package:change_theme_example/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ThemeEvent{
  ThemeData getTheme();
  String getName();
}
class DarkThemeEvent extends ThemeEvent {

  final ThemeData themeData = ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        surface: Colors.red,
        onSurface: Colors.black,
        // Colors that are not relevant to AppBar in DARK mode:
        primary: Colors.grey,
        onPrimary: Colors.black,
        secondary: Colors.grey,
        onSecondary: Colors.black,
        background: Colors.grey,
        onBackground: Colors.black,
        error: Colors.grey,
        onError: Colors.black,
      )
  );

  @override
  String getName() {
    return "dark";
  }

  @override
  ThemeData getTheme() {
    return themeData;
  }
}

class LightThemeEvent extends ThemeEvent {

  final ThemeData themeData = ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFE6E3AC),
        onPrimary: Colors.black,
        // Colors that are not relevant to AppBar in LIGHT mode:
        secondary: Color(0xFFE6E3AC),
        onSecondary: Colors.black,
        background: Colors.indigo,
        onBackground: Colors.black,
        surface: Colors.indigo,
        onSurface: Colors.black,
        error: Colors.red,
        onError: Colors.black,
      )
  );

  @override
  String getName() {
    return "light";
  }

  @override
  ThemeData getTheme() {
    return themeData;
  }
}

class ChangeThemeBloc extends Bloc<ThemeEvent, ChangeThemeState> {
  ChangeThemeBloc() :
        super(ChangeThemeState("initial", ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Colors.indigo,
            onPrimary: Colors.black,
            // Colors that are not relevant to AppBar in LIGHT mode:
            secondary: Colors.indigo,
            onSecondary: Colors.black,
            background: Colors.yellow,
            onBackground: Colors.black,
            surface: Colors.yellow,
            onSurface: Colors.black,
            error: Colors.red,
            onError: Colors.black,
          )
        ))){
    on<DarkThemeEvent>((event, emit) => emit(ChangeThemeState(event.getName(), event.getTheme())));
    on<LightThemeEvent>((event, emit) => emit(ChangeThemeState(event.getName(), event.getTheme())));

  }

}

