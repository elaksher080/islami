import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islami/moduls/hadeth/hadeth_view.dart';
import 'package:islami/moduls/qruan/qruan_view.dart';
import 'package:islami/moduls/radio/radio_view.dart';
import 'package:islami/moduls/settings/settings_view.dart';
import 'package:islami/moduls/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {

  static const String routeName = "home_layout";


   HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    SettingsView(),
    RadioView(),
    TasbehView(),
    HadethView(),
    QruanView(),
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background_homelayout.png"),
               fit: BoxFit.cover,
              ),
            ) ,

      child: Scaffold(
      backgroundColor: Colors.transparent,
        //////////////////////////////////////////
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
    ////////////////////////////////////////////////
        body: screens[selectedIndex] ,
    //////////////////////////////////////////////////
    bottomNavigationBar: BottomNavigationBar(

       onTap: (int index){
        setState(() {
          selectedIndex =index;
        });
       },
           currentIndex: selectedIndex,
      items: const [

        BottomNavigationBarItem(icon:
        ImageIcon(
          AssetImage("assets/icons/settings.png"),
        ),

            label: "الأعدادات"),

        BottomNavigationBarItem(icon:
        ImageIcon(
            AssetImage("assets/icons/radio.png"),
        ),

            label: "الراديو"),

        BottomNavigationBarItem(icon:
        ImageIcon(
            AssetImage("assets/icons/sebha.png"),
        ),

            label: "التسبيح"),

        BottomNavigationBarItem(icon:
        ImageIcon(
            AssetImage("assets/icons/moshaf_blue.png"),
        ),

            label: "الأحاديث"),

        BottomNavigationBarItem(icon:
        ImageIcon(
            AssetImage("assets/icons/quran.png"),
        ),

            label: "القرآن"),


    ],
    ),
///////////////////////////////////////////////////////

      ),
    );
  }
}
