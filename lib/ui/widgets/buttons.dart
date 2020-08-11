import 'package:appet/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        width: 220,
        child: OutlineButton(
          child: Text('Get Started'),
          borderSide: BorderSide(width: 2.0, color: lightMove),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );
  }
}
