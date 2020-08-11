import 'package:appet/ui/shared/app_colors.dart';
import 'package:appet/ui/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appet/ui/widgets/darkContainer.dart';
import 'package:appet/ui/widgets/circles.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                DarkContainer(
                  height: MediaQuery.of(context).size.height * 0.8,
                  clipVal: 80,
                ),
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
            Container(
                alignment: Alignment(-1.6, 1),
                child: Circle(width: 143, height: 143, color: lightGreen)),
          ],
        ),
      ),
    );
  }
}
