import 'package:nomixe/config/app_theme.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  Color? dividerColor = AppTheme.dividerColor;
  double? thickness = 0.8;
  AppDivider({Key? key, this.dividerColor, this.thickness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: thickness,
      color: dividerColor,
    );
  }
}
