import 'package:flutter/material.dart';

class AcadocsTheme {
  static ThemeData get light => ThemeData(
        canvasColor: Colors.white70,
        colorScheme: const ColorScheme.light(
            background: Colors.white60,
            onPrimary: Colors.teal,
            onBackground: Colors.blue),
        primarySwatch: Colors.blueGrey,
      );
}

class AcadocsThemeDark {
  static ThemeData get dark => ThemeData(
        canvasColor: Colors.black54,
        colorScheme: const ColorScheme.dark(background: Colors.black54),
        primarySwatch: Colors.amber,
      );
}
