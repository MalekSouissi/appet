import 'package:appet/ui/widgets/background.dart';
import 'package:appet/ui/widgets/buttons.dart';
import 'package:appet/ui/widgets/fadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Background(),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.85,
            left: MediaQuery.of(context).size.width * 0.2,
            child: FadeAnimation(3, SubmitButton())),
      ],
    );
  }
}
