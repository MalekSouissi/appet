import 'package:appet/ui/shared/app_colors.dart';
import 'package:appet/ui/widgets/circles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  final String name;

  ImageContainer({this.name});

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation translateAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });
    translateAnimation = Tween<double>(begin: 0, end: 100).animate(controller);

    controller.forward();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              color: lightMove,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * -0.15,
              left: MediaQuery.of(context).size.width * 0.45,
              child: Circle(
                  width: 4.5 * translateAnimation.value,
                  height: 4.5 * translateAnimation.value,
                  color: Colors.white),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.07,
                    left: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.08,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
