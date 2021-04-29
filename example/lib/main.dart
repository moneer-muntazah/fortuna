import 'package:flutter/material.dart';
import 'animated_container_example.dart';
import 'super_basic_tween_animation_build_example.dart';
import 'doppler_sun.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        // body: AnimatedControllerExample(),
        body: DopplerSun(),
      ),
    );
  }
}
