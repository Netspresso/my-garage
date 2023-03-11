import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('lib/images/auto3.jpg'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[100],
        leading: Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.menu,
            size: 40,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'lib/images/auto3.jpg',
            fit: BoxFit.fitHeight,
            height: 300,
          ),
        ],
      ),

      // --bottom navigation bar--

      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite), label: "favourite"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.notifications), label: "notifications"),
      //   ],
      // ),
    );
  }
}
