import 'package:nomixe/config/app_theme.dart';
import 'package:nomixe/utils/dimensions.dart';
import 'package:nomixe/utils/extensions/context.extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class AppArrowButton extends StatelessWidget {
  final VoidCallback? onPressed;
  String arrowIconType;
  String text;
  double height;
  double width;
  double buttonRadius;
  Color textColor;
  Color? buttonColor;

  AppArrowButton({
    Key? key,
    this.onPressed,
    this.arrowIconType = 'Light',
    this.text = '',
    this.height = Dimensions.buttonHeight,
    this.width = Dimensions.buttonWidth,
    this.textColor = AppTheme.whiteColor,
    this.buttonColor,
    double? buttonRadius,
  })  : buttonRadius = Dimensions.arrowButtonRadius,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.buttonHeight,
      width: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: arrowIconType == 'Light' ? AppTheme.arrowButtonBg : AppTheme.darkPrimaryColor,
          shadowColor: AppTheme.transparent,
          foregroundColor: AppTheme.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
        ),
        child: Icon(
          CupertinoIcons.arrow_right,
          color: arrowIconType == 'Light' ? AppTheme.darkPrimaryColor : Colors.white,
        ),
      ),
    );
  }
}
