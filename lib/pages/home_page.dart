import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_garage/utils/car_tile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// import '../utils/car_add.dart';

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
          CarTile(),
          AddButton(
            carBrand: 'Mercedes-Benz',
            carImagePath: 'lib/images/auto1.jpg',
            carModel: 'SL',
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

class AddButton extends StatelessWidget {
  final String carImagePath;
  final String carBrand;
  final String carModel;
  // final String carProductionYear;
  // final String engineCapacity;
  // final String enginePower;
  // final String fuelType;

  AddButton({
    required this.carImagePath,
    required this.carBrand,
    required this.carModel,
    // this.carProductionYear,
    // this.engineCapacity,
    // this.enginePower,
    // this.fuelType,
  });

  @override
  Widget build(BuildContext context) {
    // Cloud Firestore initialization with one particular collection of cars
    CollectionReference cars = FirebaseFirestore.instance.collection('cars');

    Future<void> addCar() {
      return cars
          .add({
            'car_image_path': carImagePath,
            'car_brand': carBrand,
            'car_model': carModel,
          })
          .then((value) => print('Car added'))
          .catchError((error) => print("Failed to add car: $error"));
    }

    return FloatingActionButton(
      onPressed: addCar,
      child: const Icon(Icons.add),
    );
  }
}
