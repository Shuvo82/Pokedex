import 'package:flutter/material.dart';
import 'package:pokemon_app/data_source/pokemon_data.dart';

import '../widgets/pokemon_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  static List<Map?>? PokemonData = PokemonDataSource.pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Pokemon App'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(
                  "Pokidex",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 18,
              child: Container(
                height: 650,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: PokemonData!.length,
                  itemBuilder: (context, index) {
                    return PokemonCard(
                      name: "${PokemonData![index]!["name"]}",
                      image: "${PokemonData![index]!["img"]}",
                      num: "${PokemonData![index]!["num"]}",
                      types: [
                        PokemonData![index]!.containsKey("type")
                            ? PokemonData![index]!["type"][0]
                            : "",
                        PokemonData![index]!.containsKey("type")
                            ? PokemonData![index]!["type"][0]: "", //index 1 er value sb somoy thake na
                      ],
                      pokemon_map: PokemonData![index],
                    );
                  },
                ),

                // child: GridView(
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       childAspectRatio: 4 / 3,
                //       mainAxisSpacing: 10,
                //       crossAxisSpacing: 8),
                //   children: [
                //     PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //     // PokemonCard(),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
