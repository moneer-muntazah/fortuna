import 'dart:math' as math;
import 'package:flutter/material.dart';

class AnimatedControllerExample extends StatefulWidget {
  @override
  _AnimatedControllerExampleState createState() =>
      _AnimatedControllerExampleState();
}

class _AnimatedControllerExampleState extends State<AnimatedControllerExample> {
  var _bigger = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            curve: Curves.linear,
            // curve: SineCurve(),
            // curve: SawTooth(3),
            width: _bigger ? 300.0 : 100,
            height: _bigger ? 300.0 : 100,
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: 100, height: 100),
              child: const ColoredBox(color: Colors.purpleAccent),
            ),
            duration: Duration(seconds: 1),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _bigger = !_bigger;
            }),
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}

class SineCurve extends Curve {
  final double count;

  SineCurve({this.count = 1});

  @override
  double transformInternal(double t) {
    return math.sin(count * 2 * math.pi * t) * 0.5 + 0.5;
  }
}