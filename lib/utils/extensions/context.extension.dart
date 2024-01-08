import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {

  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;
  TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;

  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall!;

}