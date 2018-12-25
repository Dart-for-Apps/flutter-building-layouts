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
      body: Column(
        children: <Widget>[
          TitleSection(),
          SizedBox(
            height: 8.0,
          ),
          ButtonSection(),
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
