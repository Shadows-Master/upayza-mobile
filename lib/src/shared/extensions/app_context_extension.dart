import 'package:flutter/material.dart';

extension AppContextExtension on BuildContext {
  Brightness get brightness => Theme.of(this).brightness;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  //TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
}

extension MediaQueryX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension BoxShadowOf on BuildContext{
  List<BoxShadow> get boxShadow => [
    BoxShadow(
      offset: const Offset(.1, .1),
      blurRadius: .5,
      spreadRadius: .3,
      color: colorScheme.secondary.withOpacity(.3),
    )
  ];
}