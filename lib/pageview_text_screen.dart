import 'package:flutter/material.dart';
import 'package:flutter_pageview_text_jeganya/app_data_text.dart';
import 'package:share_plus/share_plus.dart';
import 'display_text.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({Key? key}) : super(key: key);

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('William wordswoth Quotes'),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) =>
            [PopupMenuItem(value: 1, child: Text('Share'))],
            onSelected: (value) {
              if (value == 1) {
                _shareInfo();
              }
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 400,
            child: PageView.builder(
                onPageChanged: (index){
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemCount: appDataList.length,
                itemBuilder: (context, index) {
                  return DisplayText(
                    appData: appDataList[index],
                  );
                }),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  child: new Text(
                    (selectedIndex+1).toString() +
                        '/' +
                        appDataList.length.toString(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey),

                  ),
                ),
              ],
            ),),
        ],
      ),
    );
  }

  _shareInfo() {
    print('--------->Share');

    Share.share(appDataList[selectedIndex].Text);
    print(appDataList[selectedIndex].Text);
  }
}