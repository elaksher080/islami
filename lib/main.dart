import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/layout/home_layout.dart';
import 'package:islami/moduls/qruan/qruan_details.dart';
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
      darkTheme: ApplicationTheme.darkTheme,
      ////////////////////////////////////////////
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),
      ///////////////////////////////////
      initialRoute: Splashscreen.routeName,
      routes: {
        Splashscreen.routeName: (context) => const Splashscreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QruanDetails.routeName: (context) => const QruanDetails(),
      },
    );
  }
}
