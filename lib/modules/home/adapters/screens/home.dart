import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> cardTexts = [
    'Tus me gusta',
    'This is Mora',
    'This is Jose',
    'Dua Lipa',
    'Dani Flow',
    'Imagine Dragons'
  ];

  final List<String> imageUrls = [
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png',
    'https://i.pinimg.com/originals/07/74/a4/0774a492388967e2b5b6d65b95f3fd1a.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Buenas tardes',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(Icons.settings_outlined, color: Colors.white, size: 30),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1.9,
              children: List.generate(6, (index) {
                return Card(
                  color: Colors.white,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      children: [
                        Expanded(
                          flex: -1,
                          child: Image.network(
                            imageUrls[index],
                            height: 500,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(cardTexts[index],
                              style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Lo mejor de los artistas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var i = 0; i < 9; i++)
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          width: 200,
                          height: 200,
                          // Puedes personalizar el contenido de la tarjeta aquí
                          child: Center(
                            child: Text(
                              'Artista $i',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Tus programas',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var i = 0; i < 9; i++)
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          width: 200,
                          height: 200,
                          // Puedes personalizar el contenido de la tarjeta aquí
                          child: Center(
                            child: Text(
                              'programa $i',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Escuchado recientemente',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var i = 0; i < 9; i++)
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          width: 200,
                          height: 200,
                          // Puedes personalizar el contenido de la tarjeta aquí
                          child: Center(
                            child: Text(
                              'Musica $i',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Tus mixes mas escuchados',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var i = 0; i < 9; i++)
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Card(
                        color: Colors.white,
                        child: Container(
                          width: 200,
                          height: 200,
                          // Puedes personalizar el contenido de la tarjeta aquí
                          child: Center(
                            child: Text(
                              'mixes pa $i',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            
          ],
          
        ),
        
      ),
      
    );
  }
}
