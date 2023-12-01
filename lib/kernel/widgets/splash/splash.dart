// import 'package:flutter/material.dart';

// class Splash extends StatefulWidget {
//   final String title;
//   const Splash({super.key, required this.title});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 4),
//         () => Navigator.pushReplacementNamed(context, '/menu'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Image.network(
//                 'https://w7.pngwing.com/pngs/163/564/png-transparent-spotify-logo-spotify-samsung-gear-s3-music-streaming-media-podcast-macbook-miscellaneous-logo-music-download-thumbnail.png',
//                 width: 400,
//                 height: 250,
//               ),
//               Text('${widget.title}')
//             ]),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  final String title;
  const Splash({super.key, required this.title});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4),
        () => Navigator.pushReplacementNamed(context, '/menu'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Aquí se cambia el color de fondo a negro
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://brandlogos.net/wp-content/uploads/2021/12/spotify-brandlogo.net_.png',
                width: 400,
                height: 250,
              ),
              Text('${widget.title}', style: TextStyle(color: Colors.white)) // Cambia el color del texto a blanco para que sea visible en el fondo negro
            ]),
      ),
    );
  }
}