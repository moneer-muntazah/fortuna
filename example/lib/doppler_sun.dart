/// Source: https://medium.com/flutter/custom-implicit-animations-in-flutter-with-tweenanimationbuilder-c76540b47185
import 'package:flutter/material.dart';

class DopplerSun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColorFiltered(
        child: Image.asset('assets/sun.jpg', height: 250, width: 250),
        colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate),
      ),
    );
  }
}
