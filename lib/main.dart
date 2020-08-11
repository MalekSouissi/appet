import 'package:appet/ui/views/add_form.dart';
import 'package:appet/ui/views/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:appet/ui/widgets/background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddForm(),
    );
  }
}
