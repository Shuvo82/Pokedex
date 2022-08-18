import 'package:flutter/material.dart';

import 'power_badge.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('pressedd'),
      child: Stack(children: [
        Container(
          height: double.infinity,

          width: double.infinity,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: const Color(0xff49D0B0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "bulbasar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PowerBadge(
                text: "water",
              ),
              PowerBadge(text: "fire"),
            ],
          ),
          //width: double.infinity,
        ),
        Positioned(
          right: -6,
          bottom: -7,
          child: Image.network(
            "http://www.serebii.net/pokemongo/pokemon/001.png",
          ),
        )
      ]),
    );
  }
}
