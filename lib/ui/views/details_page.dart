import 'package:appet/ui/widgets/detailsList.dart';
import 'package:appet/ui/widgets/navBar.dart';
import 'package:appet/ui/widgets/photoContainer.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  final String image;
  DetailsPage({this.name, this.image});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ImageContainer(
                name: widget.name,
              ),
              DetailsList(),
            ],
          ),
          Hero(
            tag: 'location-post${widget.name}',
            child: Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.3,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(widget.image),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
