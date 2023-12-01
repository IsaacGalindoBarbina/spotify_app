import 'package:flutter/material.dart';

class Searchs extends StatefulWidget {
  const Searchs({Key? key}) : super(key: key);

  @override
  State<Searchs> createState() => _SearchsState();
}

class _SearchsState extends State<Searchs> {
  final List<String> cardTexts = [
    'musica',
    'podcasts',
    'eventos en vivo',
    'creados para ti',
    'nuevos lanzamientos',
    '2023 musica',
    'musica',
    'podcasts',
    'eventos en vivo',
    'creados para ti',
    'nuevos lanzamientos',
    '2023 musica',
    // Add more texts as needed
  ];

  final List<String> cardImages = [
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png'
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Buscar',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(35.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey, // Cambia esto al color deseado
                  filled: true,
                  prefixIcon: Icon(Icons.search), // Agrega esto
                  border: OutlineInputBorder(),
                  labelText: 'Artistas, canciones o podcasts',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.2, // Adjust this as needed
                children: List.generate(cardTexts.length, (index) {
                  return Card(
                    color: Colors.accents[index % Colors.accents.length],
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 80,
                              width: 50,
                              child: Image.network(
                                cardImages[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              cardTexts[index],
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
