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
        primaryVariant: Colors.grey,
        secondary: Colors.grey,
        secondaryVariant: Colors.grey,
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
        primary: Colors.yellow,
        onPrimary: Colors.black,
        // Colors that are not relevant to AppBar in LIGHT mode:
        primaryVariant: Colors.grey,
        secondary: Colors.grey,
        secondaryVariant: Colors.grey,
        onSecondary: Colors.black,
        background: Colors.grey,
        onBackground: Colors.black,
        surface: Colors.grey,
        onSurface: Colors.black,
        error: Colors.grey,
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

class BlocChangeTheme extends Bloc<ThemeEvent, ChangeThemeState> {
  BlocChangeTheme() :
        super(ChangeThemeState("initial", ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.brown,
          primaryColor: Colors.green,
        ))){
    on<DarkThemeEvent>((event, emit) => emit(ChangeThemeState(event.getName(), event.getTheme())));
    on<LightThemeEvent>((event, emit) => emit(ChangeThemeState(event.getName(), event.getTheme())));

  }

}

