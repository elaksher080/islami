import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/layout/home_layout.dart';

class Splashscreen extends StatelessWidget {

  static const String routeName = "splash_screen";

  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {

     Timer(const Duration( seconds: 3),

             () {
       Navigator.pushReplacementNamed(context, HomeLayout.routeName );
     },
     );

    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        ApplicationTheme.isDark
            ? "assets/images/background_dark.png"
            : "assets/images/splash.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
