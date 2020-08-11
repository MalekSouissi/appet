import 'package:appet/ui/shared/app_colors.dart';
import 'package:appet/ui/widgets/circles.dart';
import 'package:appet/ui/widgets/darkContainer.dart';
import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                DarkContainer(
                  height: MediaQuery.of(context).size.height * 0.25,
                  clipVal: 40,
                ),
              ],
            ),
            Positioned(child: Circle(width: 66, height: 66, color: lightGreen)),
          ],
        ),
      ),
    );
  }
}
