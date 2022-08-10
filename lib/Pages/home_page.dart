import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.list,
              size: 30,
              color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(

                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: const Text("Pokidex",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: Container(
                  height: 650,
                  child: GridView(

                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ),

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,

                          color: Colors.teal[300],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.teal[300],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,

                          color: Colors.teal[300],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.teal[300],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,

                          color: Colors.teal[300],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.teal[300],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,

                          color: Colors.teal[300],

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          color: Colors.teal[300],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}