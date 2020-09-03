import 'package:appet/ui/shared/app_colors.dart';
import 'package:appet/ui/widgets/buttons.dart';
import 'package:appet/ui/widgets/fadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appet/ui/widgets/darkContainer.dart';
import 'package:appet/ui/widgets/circles.dart';

class Background extends StatefulWidget {
  //AnimationController _positionController;
  // Animation<double> _positionAnimation;

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> with TickerProviderStateMixin {
  AnimationController controller;
  Animation translateAnimation;
  Animation translateAnimation1;
  Animation translateAnimation2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addListener(() {
            setState(() {});
          });
    translateAnimation = Tween<double>(begin: 0, end: 8).animate(controller);
    translateAnimation1 = Tween<double>(begin: 0, end: 1).animate(controller);
    translateAnimation2 =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(50, 50))
            .animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                DarkContainer(
                  height: MediaQuery.of(context).size.height *
                      0.1 *
                      translateAnimation.value,
                  clipVal: 80,
                ),
//                Positioned(
//                    top: MediaQuery.of(context).size.height * 0.55,
//                    left: MediaQuery.of(context).size.width * 0.8,
//                    child: Circle(width: 66, height: 66, color: lightGreen)),

                FadeAnimation(
                  1,
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              0.55 *
                              translateAnimation1.value,
                          left: MediaQuery.of(context).size.width *
                              0.8 *
                              translateAnimation1.value),
                      child: Circle(width: 66, height: 66, color: lightGreen)),
                ),
//                Positioned(
//                    top: MediaQuery.of(context).size.height * 0.3,
//                    right: MediaQuery.of(context).size.width * 0.8,
//                    child: Circle(width: 158, height: 158, color: lightMove)),
                FadeAnimation(
                  1,
                  Container(
                      alignment: Alignment(-1.6 * translateAnimation1.value, 1),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              0.3 *
                              translateAnimation1.value),
                      child: Circle(width: 158, height: 158, color: lightMove)),
                ),
//                Positioned(
//                    top: MediaQuery.of(context).size.height * 0.15,
//                    left: MediaQuery.of(context).size.width * 0.85,
//                    child: Circle(width: 94, height: 94, color: lightMove)),
                FadeAnimation(
                  1,
                  Container(
                      alignment: Alignment(1.2 * translateAnimation1.value, 0),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              0.15 *
                              translateAnimation1.value),
                      child: Circle(width: 94, height: 94, color: lightMove)),
                ),
                FadeAnimation(
                  1,
                  Container(
//                    top: MediaQuery.of(context).size.height * 0.175,
//                    left: MediaQuery.of(context).size.width * 0.70,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              0.175 *
                              translateAnimation1.value,
                          left: MediaQuery.of(context).size.width *
                              0.7 *
                              translateAnimation1.value),
                      child: Circle(width: 42, height: 42, color: lightMove)),
                ),
              ],
            ),
            FadeAnimation(
              1,
              Container(
                  alignment: Alignment(-1.6 * translateAnimation1.value,
                      1 * translateAnimation1.value),
                  child: Circle(width: 143, height: 143, color: lightGreen)),
            ),
          ],
        ),
      ),
    );
  }
}
