import 'package:appet/ui/views/details_page.dart';
import 'package:appet/ui/widgets/fadeIn.dart';
import 'package:appet/ui/widgets/postItem.dart';
import 'package:flutter/material.dart';

import 'detailsList.dart';

class PetList extends StatefulWidget {
  @override
  _PetListState createState() => _PetListState();
}

class _PetListState extends State<PetList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/details');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          name: 'Hamster',
                          image: 'assets/hamster2.png',
                        )));
          },
          child: FadeIn(
            3,
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Stack(
                children: <Widget>[
                  PostItem(
                    name: 'Hamster',
                    details: DetailsList(),
                  ),
                  Hero(
                    tag: 'location-postHamster',
                    child: Container(
                      margin: EdgeInsets.only(top: 40, left: 60),
                      width: 220,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/hamster2.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          name: 'Doogo',
                          image: 'assets/doogo.png',
                        )));
          },
          child: FadeIn(
            4,
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Stack(
                children: <Widget>[
                  PostItem(
                    name: 'Doogo',
                    details: DetailsList(),
                  ),
                  Hero(
                    tag: 'location-postDoogo',
                    child: Container(
                      margin: EdgeInsets.only(top: 40, left: 60),
                      width: 220,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/doogo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          name: 'Cat',
                          image: 'assets/Cat-2.png',
                        )));
          },
          child: FadeIn(
            5,
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Stack(
                children: <Widget>[
                  PostItem(
                    name: 'Cat',
                    details: DetailsList(),
                  ),
                  Hero(
                    tag: 'location-postCat',
                    child: Container(
                      margin: EdgeInsets.only(top: 40, left: 60),
                      width: 220,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/Cat-2.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
