import 'package:appet/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

import 'detailsList.dart';

class PostItem extends StatefulWidget {
  final String name;
  final Widget details;

  PostItem({this.name, this.details});

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      decoration: BoxDecoration(
          border: Border.all(color: lightMove),
          borderRadius: BorderRadius.circular(20)),
      child: FittedBox(
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    GestureDetector(
                      onLongPress: () {},
                      child: Container(
                        width: 350,
                        height: 400,
                        child: ClipPath(
                          clipper: OuterClippedPart(),
                          child: Container(
                            //width: animation.value,
                            decoration: BoxDecoration(
                                color: lightMove,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 100,
                        left: 20,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    child: widget.details,
                  ),
                ),
              ]),
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
    path.moveTo(0, size.height);
    path.lineTo(0, size.height);

    path.cubicTo(size.width, size.height, size.width, 0, 0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
