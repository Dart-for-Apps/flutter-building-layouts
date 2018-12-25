import 'package:flutter/material.dart';

import 'button_section.dart';
import 'image_section.dart';
import 'text_section.dart';
import 'title_section.dart';

class BuildingLayouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Building Lyaouts'),
      ),
      body: ListView(
        // 향 후 앱 확장을 위해 리스트 방향을 가로로 수정
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            // horizontal 리스트의 경우 width 정보가 반드시 필요
            // vertical 리스트의 경우는 height 정보가 반드시 필요
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ImageSection(),
                SizedBox(
                  height: 9.0,
                ),
                TitleSection(),
                SizedBox(
                  height: 9.0,
                ),
                ButtonSection(),
                TextSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
