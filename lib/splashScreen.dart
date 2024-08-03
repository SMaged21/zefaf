import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/main.dart';
import 'package:online_shopping/welecome.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterSplashScreen.fadeIn(
      duration: Duration(seconds: 3),
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset("images/Screenshot 2024-07-04 002208.png"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: WelecomeScreen(),
    ));
  }
}
