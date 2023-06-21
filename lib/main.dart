// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('What the fuck'),
//           backgroundColor: Colors.blueGrey[900],
//         ),
//         body: Center(
//           child: Text("NDA TAU INI NGAPAIN"),
//         ),
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alvin Lionel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alvin'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              HeroSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Alvin',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          NavLinks(),
        ],
      ),
    );
  }
}

class NavLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavLink(text: 'Home', isActive: true),
        NavLink(text: 'About Me'),
        NavLink(text: 'Resume'),
        NavLink(text: 'Portfolio'),
        NavLink(text: 'Contact'),
      ],
    );
  }
}

class NavLink extends StatelessWidget {
  final String text;
  final bool isActive;

  NavLink({required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          // Handle navigation
        },
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.blue : Colors.black,
          ),
        ),
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/hero-bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Alvin Lionel',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Passion for tech, dedication to career goals',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Handle contact button press
            },
            child: Text('Contact Me'),
          ),
        ],
      ),
    );
  }
}
