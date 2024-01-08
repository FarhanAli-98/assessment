import 'package:nomixe/config/app_theme.dart';
import 'package:nomixe/utils/dimensions.dart';
import 'package:nomixe/utils/extensions/context.extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  String text;
  double height;
  double width;
  double buttonRadius;
  Color textColor;
  Color? buttonColor;

  AppElevatedButton({
    Key? key,
    this.onPressed,
    this.text = '',
    this.height = Dimensions.buttonHeight,
    this.width = Dimensions.buttonWidth,
    this.textColor = AppTheme.whiteColor,
    this.buttonColor,
    double? buttonRadius,
  })  : buttonRadius = Dimensions.buttonRadius,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: buttonColor == null
          ? BoxDecoration(
              gradient: AppTheme.elevatedButtonGradient,
              borderRadius: BorderRadius.all(Radius.circular(buttonRadius)),
            )
          : BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(buttonRadius)),
            ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.transparent,
            shadowColor: AppTheme.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadius),
            ),
          ),
          child: Text(
            text,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold, color: textColor),
          )),
    );
  }
}
