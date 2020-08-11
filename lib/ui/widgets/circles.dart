import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  Circle({this.width, this.height, this.color});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: this.height,
        width: this.width,
        color: this.color,
      ),
    );
  }
}
