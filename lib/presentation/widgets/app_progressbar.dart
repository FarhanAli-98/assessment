import 'package:flutter/material.dart';

import '../../config/app_theme.dart';
import '../../utils/dimensions.dart';

class AppProgressbar extends StatelessWidget {
  final double? width;
  final double? height;
  final double? value;

  const AppProgressbar({
    Key? key,
    this.width = double.infinity,
    this.height = Dimensions.tinyDividerHeight,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height!,
      width: width!,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.borderRadius),
        child: LinearProgressIndicator(
          value: value,
          valueColor:
              const AlwaysStoppedAnimation<Color>(AppTheme.darkPrimaryColor),
          backgroundColor: AppTheme.linearBgColor,
          color: AppTheme.primaryColor,
        ),
      ),
    );
  }
}
