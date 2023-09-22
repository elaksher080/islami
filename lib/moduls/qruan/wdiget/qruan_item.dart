import 'package:flutter/material.dart';

class QruanItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QruanItem({super.key, required this.suraName,required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
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
            suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        //////////////////////////
      ],
    );
  }

}