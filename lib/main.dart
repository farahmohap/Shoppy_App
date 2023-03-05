import 'package:animated_splash_screen/animated_splash_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:shoppy_app/phome.dart';

import 'package:shoppy_app/psignin.dart';

void main() {
  runApp(
    MaterialApp(
      
    routes: {
      '/category': (context) {
        
        return Categories();
      },
      '/splash': (context) {
        return Splash();
      }
    },
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
  ));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splashIconSize: 200,
          pageTransitionType: PageTransitionType.fade,
          splashTransition: SplashTransition.fadeTransition,
          splash: Image.asset(
            "images/logo.png",
            height: 200,
            width: 200,
          ),
          nextScreen: PLogIn()),
    );
  }
}
