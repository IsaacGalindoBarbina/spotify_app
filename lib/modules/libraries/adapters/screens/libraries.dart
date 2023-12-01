import 'package:flutter/material.dart';

class Libraries extends StatefulWidget {
  const Libraries({Key? key}) : super(key: key);

  @override
  _LibrariesState createState() => _LibrariesState();
}

class _LibrariesState extends State<Libraries> {
  String selectedButton = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: <Widget>[
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: <Widget>[
          //     ElevatedButton(
          //       child: Text('Música'),
          //       onPressed: () {
          //         setState(() {
          //           selectedButton = 'Música';
          //         });
          //       },
          //     ),
          //     ElevatedButton(
          //       child: Text('Podcast'),
          //       onPressed: () {
          //         setState(() {
          //           selectedButton = 'Podcast';
          //         });
          //       },
          //     ),
          //   ],
          // ),
          // Text(
          //   selectedButton == 'Música' ? 'Has seleccionado Música' : selectedButton == 'Podcast' ? 'Has seleccionado Podcast' : '',
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Música',
                    style: TextStyle(
                      color: selectedButton == 'Música'
                          ? Colors.blue
                          : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedButton = 'Música';
                  });
                },
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Podcast',
                    style: TextStyle(
                      color: selectedButton == 'Podcast'
                          ? Colors.blue
                          : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    selectedButton = 'Podcast';
                  });
                },
              ),
            ],
          ),
          if (selectedButton == 'Música')
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      10,
                      (index) => Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Image.network(
                                    'https://via.placeholder.com/150', // replace with your image url
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                              const Column(
                                children: [
                                  Text('Rodrigoremen',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  Text('ola ya se flutter',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )
                            ],
                          )),
                ),
              ),
            ),
          if (selectedButton == 'Podcast')
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    '¿Estás buscando algo para escuchar?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Explorar Podcasts'),
                    onPressed: () {
                      // Add your code here
                    },
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
