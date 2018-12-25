import 'package:flutter/material.dart';

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
