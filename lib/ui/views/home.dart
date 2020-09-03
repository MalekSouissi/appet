import 'package:appet/ui/shared/app_colors.dart';
import 'package:appet/ui/widgets/fadeIn.dart';
import 'package:appet/ui/widgets/darkContainer.dart';
import 'package:appet/ui/widgets/detailsList.dart';
import 'package:appet/ui/widgets/navBar.dart';
import 'package:appet/ui/widgets/petList.dart';
import 'package:appet/ui/widgets/postItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animations/simple_animations.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              DarkContainer(
                height: 180,
                clipVal: 40,
              ),
              Padding(
                padding: EdgeInsets.only(top: 120, left: 25.0, right: 25.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(Icons.search, color: darkMove, size: 25.0),
                      contentPadding: EdgeInsets.only(left: 10.0, top: 12.0),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontFamily: 'Quicksand'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FadeIn(
                  2,
                  Container(
                    width: 120,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.pets,
                          color: Colors.black54,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'cats',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                FadeIn(
                  2.66,
                  Container(
                    width: 120,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.pets,
                          color: Colors.black54,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'dogs',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                FadeIn(
                  3.22,
                  Container(
                    width: 120,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.pets,
                          color: Colors.black54,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'cats',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: PetList(),
          ),
        ],
      ),
    );
  }
}
