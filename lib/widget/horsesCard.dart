import 'package:flutter/material.dart';

import '../model/horse.dart';

class HorsesCard extends StatelessWidget {

  //changer en late avec bdd
   Horse horse;

  HorsesCard(this.horse, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 4,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
      child : SizedBox(
        height: 120,
      child: Row(
          children: [
        Text(horse.image),
        const SizedBox(width: 150),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text("Name : ${horse.name}"),
          Text("Age : ${horse.age}"),
          Text("Coat color : ${horse.robe}"),
          Text("Sex : ${horse.sex}"),
          Text("Specialty : ${horse.specialty}"),
        ])
      ]),
    ));
  }
}
