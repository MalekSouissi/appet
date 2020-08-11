import 'package:appet/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class ClippingClass extends CustomClipper<Path> {
  final double Clipval;

  ClippingClass({this.Clipval});
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - Clipval);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - Clipval);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class DarkContainer extends StatelessWidget {
  final double height;
  final double clipVal;
  DarkContainer({this.height, this.clipVal});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClippingClass(Clipval: clipVal),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: darkMove,
        ),
      ),
    );
  }
}
