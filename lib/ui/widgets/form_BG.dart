import 'package:appet/ui/shared/app_colors.dart';
import 'package:appet/ui/widgets/circles.dart';
import 'package:flutter/material.dart';

class FormBg extends StatefulWidget {
  @override
  _FormBgState createState() => _FormBgState();
}

class _FormBgState extends State<FormBg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                left: MediaQuery.of(context).size.width * 0.8,
                child: Circle(width: 66, height: 66, color: lightGreen)),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                right: MediaQuery.of(context).size.width * 0.8,
                child: Circle(width: 158, height: 158, color: lightMove)),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                left: MediaQuery.of(context).size.width * 0.85,
                child: Circle(width: 94, height: 94, color: lightMove)),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.175,
                left: MediaQuery.of(context).size.width * 0.70,
                child: Circle(width: 42, height: 42, color: lightMove)),
          ],
        ),
      ),
    );
  }
}
