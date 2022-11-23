import 'package:flutter/material.dart';
import 'package:horsestyle/model/horse.dart';
import 'package:horsestyle/widget/horsesCard.dart';

class HorseListView extends StatefulWidget {
  const HorseListView({super.key});

  @override
  State<HorseListView> createState() => _HorseListViewState();
}

class _HorseListViewState extends State<HorseListView> {

  @override
  void initState() {
    horseCardList.add(horsesCard1);
    horseCardList.add(horsesCard2);
    horseCardList.add(horsesCard3);
    horseCardList.add(horsesCard4);
    horseCardList.add(horsesCard5);
    super.initState();
  }

  Horse horse1 = Horse("Idalgo", "5", "brun","Appaloosa" , "male", "Course", "1");
  Horse horse2 = Horse("magic", "20", "rousse", "Pottok", "female", "obstacle", "2");
  Horse horse3 = Horse("Phoebus", "7", "blanche", "Percheron", "female", "course", "3");
  Horse horse4 = Horse("Kiss", "10", "noire", "Akhal-Téké", "female", "course", "4");
  Horse horse5 = Horse("Odin", "12", "noire", "Haflinge", "male", "course", "5");


  List<Widget> horseCardList = [];
  HorsesCard horsesCard1 = HorsesCard(Horse("Idalgo", "5", "brun","Appaloosa" , "male", "Course", "image"));
  HorsesCard horsesCard2 = HorsesCard(Horse("magic", "20", "rousse", "Pottok", "female", "obstacle", "image"));
  HorsesCard horsesCard3 = HorsesCard(Horse("Phoebus", "7", "blanche", "Percheron", "female", "course", "image"));
  HorsesCard horsesCard4 = HorsesCard(Horse("Kiss", "10", "noire", "Akhal-Téké", "female", "course", "image"));
  HorsesCard horsesCard5 = HorsesCard(Horse("Odin", "12", "noire", "Haflinge", "male", "course", "image"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Horses list"),
        ),

        body: Center(
            child: ListView.builder(
                itemCount: horseCardList.length,
                itemBuilder: (BuildContext context, int index) {
                  return horseCardList[index];
                })));
  }
}
