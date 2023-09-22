import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/layout/home_layout.dart';
import 'package:islami/moduls/qruan/qruan_details.dart';
import 'package:islami/moduls/qruan/wdiget/qruan_item.dart';
import 'package:islami/moduls/splash_screen/splash-screen.dart';

void main() {
  runApp(const MyApplcation());
}



class MyApplcation extends StatelessWidget {
  const MyApplcation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     ///////////////////////////////////
      theme: ApplicationTheme.lightTheme,
      darkTheme:ApplicationTheme.darkTheme ,
      ///////////////////////////////////
      initialRoute:Splashscreen.routeName ,
      routes: {
        Splashscreen.routeName:(context) => const Splashscreen(),
         HomeLayout.routeName :(context) =>  HomeLayout(),
        QruanDetails.routeName :(context) =>  const QruanDetails(),
      },
    );
  }
}
