import 'dart:math' as math;
import 'package:flutter/material.dart';

class SuperBasicTweenAnimationBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 2 * math.pi),
        duration: Duration(seconds: 2),
        builder: (context, angle, child) => Transform.rotate(
          angle: angle,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            child: ColoredBox(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
