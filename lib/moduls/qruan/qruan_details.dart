import 'package:flutter/material.dart';

class QruanDetails extends StatelessWidget {

  static const String routeName ="Qruan_Details";

  const QruanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme =Theme.of(context);
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_homelayout.png"),
          fit: BoxFit.cover,
        ),
      ),
          child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),

            body: Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 15,bottom: 80),
            padding:EdgeInsets.symmetric(vertical: 40, horizontal: 80) ,
            width: mediaQuery.width,
              height: mediaQuery.height,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8). withOpacity(0.7),
                borderRadius: BorderRadius.circular(25),
              ),
                   ////////////////////////////////
          child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sura Name", style: theme.textTheme.bodyLarge,),
                      SizedBox(width: 5,),
                      Icon(Icons.play_circle, size: 32,color: Colors.black,),
                    ],
                  ),
                  Divider(
                    color: theme.primaryColor,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1.5,
                    height: 10,
                  ),
                   Text("""
          “الم (1)ذَلِكَ الْكِتَابُ لَا رَيْبَ فِيهِ
           هُدًى لِلْمُتَّقِينَ (2)
           الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلَاةَ
            وَمِمَّا رَزَقْنَاهُمْ يُنْفِقُونَ (3

    """),
                ],
              ),
              
              
            ),
    ),
    );

  }
}
 