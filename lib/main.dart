import 'package:appet/ui/views/details_page.dart';
import 'package:appet/ui/widgets/fadeIn.dart';
import 'package:appet/ui/views/home.dart';
import 'package:appet/ui/widgets/FormBg.dart';
import 'package:appet/ui/views/splashScreen.dart';
import 'package:appet/ui/widgets/navBar.dart';
import 'package:appet/ui/widgets/photoContainer.dart';
import 'package:appet/ui/widgets/postItem.dart';
import 'package:flutter/material.dart';
import 'package:appet/ui/widgets/background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
      },
    );
  }
}
