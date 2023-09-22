import 'package:flutter/material.dart';
import 'package:islami/moduls/qruan/qruan_details.dart';
import 'package:islami/moduls/qruan/wdiget/qruan_item.dart';


class QruanView extends StatelessWidget {
   QruanView({super.key});

  List<String> suraName =[
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
     return Column(
       children: [
       Image.asset("assets/icons/qruan_header.png"),

         Divider(
           color: theme.primaryColor,
            thickness: 3.0,
           indent: 5,
           endIndent: 5,
           height: 0,
         ),

         Row(
           children: [
             Expanded(
               child: Text(
                 "رقم السوره" ,
                 textAlign: TextAlign.center,
                 style: theme.textTheme.bodyLarge,
               ),
             ),
         //////////////////////////////////
             Container(
               width: 3.0,
               height: 50,
               color: theme.primaryColor,
             ),

         ////////////////////////////////////
             Expanded(
               child: Text(
                 "اسم السوره",
                 textAlign: TextAlign.center,
                 style: theme.textTheme.bodyLarge,
               ),
             ),
/////////////////////////////////////////


           ],
         ),
         
         Divider(
           color: theme.primaryColor,
           thickness: 3.0,
           indent: 5,
           endIndent: 5,
           height: 0,
         ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, QruanDetails.routeName);
              },
              child: QruanItem(
                suraName: suraName[index] ,
                suraNumber:"${index+1}" ,
              ),
            ),
            itemCount: 114,
            ),
          ),
       ],

     );





  }
}
