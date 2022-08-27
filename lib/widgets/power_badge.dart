import 'package:flutter/material.dart';

class PowerBadge extends StatelessWidget {
  final String text;

  const PowerBadge({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 25,
        // width: 60,
        margin: const EdgeInsets.only(left: 15, top: 6),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white.withOpacity(0.3)),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16),
        ));
  }
}
