import 'package:appet/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:appet/ui/widgets/imputBox.dart';
import 'package:appet/ui/widgets/circles.dart';

class FormBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              ClipPath(
                clipper: OuterClippedPart(),
                child: Container(
                  color: lightMove,
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
              //
              ClipPath(
                clipper: InnerClippedPart(),
                child: Container(
                  color: darkMove,
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.85,
                  left: MediaQuery.of(context).size.width * 0.8,
                  child: Circle(width: 66, height: 66, color: lightGreen)),
              Positioned(
                  //alignment: Alignment.bottomCenter,
                  top: MediaQuery.of(context).size.height * 0.71,
                  left: MediaQuery.of(context).size.width * -0.15,
                  height: 250,
                  child: Image(
                    image: AssetImage('assets/pets.png'),
                  )),

              ClipPath(
                clipper: UpperClippedPart(),
                child: Container(
                  color: darkMove,
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OuterClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.5);
    //
    path.cubicTo(size.width * 0.45, size.height * 0.36, size.width * 0.85,
        size.height * 0.05, size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class InnerClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width * 0.7, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.4);
    //
//    path.quadraticBezierTo(
//        size.width * 0.8, size.height * 0.11, size.width * 0.7, 0);
    path.cubicTo(size.width * 0.65, size.height * 0.36, size.width * 0.95,
        size.height * 0.05, size.width * 0.5, 0);

    //
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class UpperClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(0, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    //
    // path.quadraticBezierTo(
    //  size.width * -0.9, size.height * 0.5, size.width * 0, size.width * 0.5);
    path.cubicTo(size.width * -0.95, size.height * 0.95, size.width * 0.4,
        size.height * 0.25, size.width * 0, size.height * 0);

    //
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
