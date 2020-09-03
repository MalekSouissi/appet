import 'package:appet/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsList extends StatefulWidget {
  final String size;
  final String taille;
  final String description;
  final String price;

  DetailsList({this.size, this.taille, this.description, this.price});

  @override
  _DetailsListState createState() => _DetailsListState();
}

class _DetailsListState extends State<DetailsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 35, left: 16, right: 16, bottom: 16),
            child: Text(
              'Details',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '23 cm',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '23 kg',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'green eyes',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Divider(
              color: Colors.black,
              height: 20,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '23\$',
              style: TextStyle(fontSize: 50, color: lightMove),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add_shopping_cart,
                  size: 35,
                  color: lightMove,
                ),
                Text(
                  'add to cart',
                  style: TextStyle(fontSize: 20, color: lightMove),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
