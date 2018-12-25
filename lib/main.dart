import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Building Layouts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BuildingLayouts(),
    );
  }
}

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

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(23.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '백두 무궁 한라 삼천!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '우리나라에 있으면 참 좋을 텐데',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ]),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;

  CustomButton({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color color = Theme.of(context).primaryColor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: color),
        SizedBox(
          height: 8.0,
        ),
        Text(label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ))
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CustomButton(icon: Icons.call, label: 'CALL'),
        CustomButton(icon: Icons.near_me, label: 'CALL'),
        CustomButton(icon: Icons.share, label: 'CALL'),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        '''
아무 텍스트나 길게 입력 하면 됩니다. 하지만 나는 왼쪽 정렬을 하고 싶지. 크기도 고정하고 싶지 아무 텍스트나 길게 입력 하면 됩니다. 하지만 나는 왼쪽 정렬을 하고 싶지. 크기도 고정하고 싶지 아무 텍스트나 길게 입력 하면 됩니다. 하지만 나는 왼쪽 정렬을 하고 싶지. 크기도 고정하고 싶지 아무 텍스트나 길게 입력 하면 됩니다. 하지만 나는 왼쪽 정렬을 하고 싶지. 크기도 고정하고 싶지 
          ''',
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset(
      'images/lake.jpg',
      width: 600.0,
      height: 240.0,
      fit: BoxFit.cover,
    );
  }
}
