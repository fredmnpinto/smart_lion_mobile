import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final Widget widget_child;

  FadeAnimation({Key? key, required this.widget_child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimation<double>(
      control: CustomAnimationControl.playFromStart,
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(seconds: 2),
      delay: const Duration(seconds: 0),
      curve: Curves.easeIn,
      animationStatusListener: (status) {
        print('status updated: $status');
      },
      builder: (context, child, value) {
        return Opacity(
            opacity: value, 
            child: child
        );
      },
      child: widget_child,
    );
  }
}