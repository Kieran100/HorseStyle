import 'package:flutter/material.dart';
import '../model/horse.dart';

class HorsesCard extends StatelessWidget {
  var _hasBeenClicked = false;
  //changer en late avec bdd
  final Horse horse;
  late List<Horse?> selectedHorseList = [];
  HorsesCard(this.horse, this.selectedHorseList, {super.key});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 4,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
      child : SizedBox(
        height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(horse.image),
        const SizedBox(width: 90),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text("Name : ${horse.name}"),
          Text("Age : ${horse.age}"),
          Text("Coat color : ${horse.robe}"),
          Text("Sex : ${horse.sex}"),
          Text("Specialty : ${horse.specialty}"),
        ]),
     const SizedBox(width: 50),
     SizedBox(
       height: 50,
       width: 60,
       child:
     ElevatedButton(onPressed: () {
        selectedHorseList.add(horse);
        print (selectedHorseList[0]?.name);
        print(horse.name);
       ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(content: Text('Added')));
     },
       style: ButtonStyle(
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
               RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20.0),
                   side: const BorderSide(color: Colors.black)
               )
           )
       ),
         child: Icon(Icons.add),
     )


     )]),
    ));
  }


}
