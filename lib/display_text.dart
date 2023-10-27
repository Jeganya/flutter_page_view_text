import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_pageview_text_jeganya/app_data_text.dart';

class DisplayText extends StatelessWidget {
  final AppDataText appData;

  const DisplayText({super.key, required this.appData});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
          ),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  appData.Text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
          ))
    ]);
  }
}