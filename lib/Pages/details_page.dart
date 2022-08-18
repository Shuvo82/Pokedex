import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/my_title.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff12afe1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,

          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.list,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            MyTitle(name: "Charmander", num: "#004", power1: "Fire")
          ],
        ),
      ),
    );
  }
}
