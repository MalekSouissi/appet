import 'package:appet/ui/widgets/background.dart';
import 'package:appet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Background(),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.85,
            left: MediaQuery.of(context).size.width * 0.2,
            child: SubmitButton()),
      ],
    );
  }
}
