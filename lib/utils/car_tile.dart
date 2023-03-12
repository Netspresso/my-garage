import 'package:flutter/material.dart';

class CarTile extends StatelessWidget {
  final String carImagePath = 'lib/images/auto1.jpg';
  final String carBrand = 'Mercedes-Benz';
  final String carModel = 'SL';
  final String carProductionYear = '2022';
  final String engineCapacity = '4.0';
  final String enginePower = '525';
  final String fuelType = 'Benzyna';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey[900],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(this.carImagePath),
            Text(
              '${this.carBrand}',
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey[100],
              ),
            ),
            Text(
              'Model: ${this.carModel}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[100],
              ),
            ),
            Text(
              'Rok produkcji: ${carProductionYear}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[100],
              ),
            ),
            Text(
              'Pojemność: ${engineCapacity}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[100],
              ),
            ),
            Text(
              'Moc silnika: ${enginePower}KM',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[100],
              ),
            ),
            Text(
              'Rodzaj paliwa: ${fuelType}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
