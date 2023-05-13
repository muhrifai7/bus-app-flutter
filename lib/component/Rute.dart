import 'package:flutter/material.dart';

class Rute extends StatelessWidget {
  final String departureCity;
  final String arrivalCity;
  final String departureTime;

  const Rute(
      {super.key,
      this.departureCity = "Jakarta",
      this.arrivalCity = "Malang",
      this.departureTime = "20:00"});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$departureCity - $arrivalCity'),
                Text(departureTime),
              ],
            ),
          ],
        ));
  }
}
