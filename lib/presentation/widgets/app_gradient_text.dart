import 'package:nomixe/config/app_theme.dart';
import 'package:flutter/material.dart';

class AppGradientText extends StatelessWidget {
  final Text text;
  final Gradient gradient;

  const AppGradientText({Key? key, required this.text, required this.gradient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: text,
    );
  }
}
