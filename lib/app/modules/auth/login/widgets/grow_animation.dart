import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class GrowAnimation extends StatelessWidget {
  final Widget widget_child;

  GrowAnimation({Key? key, required this.widget_child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimation<double>(
      control: CustomAnimationControl.playFromStart,
      tween: Tween(begin: 0, end: 200),
      duration: const Duration(seconds: 1),
      delay: const Duration(seconds: 2),
      curve: Curves.easeInCirc,
      startPosition: 0,
      animationStatusListener: (status) {
        print('status updated: $status');
      },
      builder: (context, child, value) {
        return Container(
            width: value,
            height: value, 
            child: child
        );
      },
      child: widget_child,
    );
  }
}