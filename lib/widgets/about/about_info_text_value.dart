
import 'package:flutter/material.dart';

class AboutInfoTextValue extends StatelessWidget {
  String text;
  AboutInfoTextValue({
    Key? key,required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("$text",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff000000),
        ),),
    );
  }
}
