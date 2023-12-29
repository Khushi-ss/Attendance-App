
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:demo/signup_page.dart';

import 'package:flutter/material.dart';

class splash_page extends StatefulWidget {
  const splash_page({super.key});

  @override
  State<splash_page> createState() => _splash_pageState();
}

class _splash_pageState extends State<splash_page> {

  @override
  Widget build(BuildContext context) {

    return FlutterSplashScreen.fadeIn(
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
        child: Image.asset("assets/images/img.png"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const signup_page(),
    );
  }
}


