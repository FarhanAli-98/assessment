import 'package:nomixe/config/scroll_behaviour.dart';
import 'package:flutter/material.dart';

class AppBuilder extends StatelessWidget {
  final Widget widget;

  const AppBuilder({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      // Replace with your directionality logic
      child: Stack(
        children: [
          ScrollConfiguration(behavior: const ScrollBehaviorModified(), child: widget),
          // if (isLoading)
          //   Positioned.fill(
          //     child: Container(
          //       color: Colors.black.withOpacity(0.5),
          //       child: const Center(
          //         child: CircularProgressIndicator(),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
