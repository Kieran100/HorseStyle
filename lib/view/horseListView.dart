import 'package:flutter/material.dart';
import 'package:horsestyle/model/horse.dart';
import 'package:horsestyle/widget/horses_card.dart';

class HorseListView extends StatefulWidget {
  const HorseListView({super.key});

  static const tag = "horse_list_view";

  @override
  State<HorseListView> createState() => _HorseListViewState();
}

class _HorseListViewState extends State<HorseListView> {
  @override
  void initState() {
    late List<Horse> selectedHorseList = [];

    HorsesCard horsesCard1 = HorsesCard(
        Horse("Idalgo", "5", "brun", "Appaloosa", "male", "Course", "image"),
        selectedHorseList);
    HorsesCard horsesCard2 = HorsesCard(
        Horse("magic", "20", "rousse", "Pottok", "female", "obstacle", "image"),
        selectedHorseList);
    HorsesCard horsesCard3 = HorsesCard(
        Horse("Phoebus", "7", "blanche", "Percheron", "female", "course",
            "image"),
        selectedHorseList);
    HorsesCard horsesCard4 = HorsesCard(
        Horse("Kiss", "10", "noire", "Akhal-Téké", "female", "course", "image"),
        selectedHorseList);
    HorsesCard horsesCard5 = HorsesCard(
        Horse("Odin", "12", "noire", "Haflinge", "male", "course", "image"),
        selectedHorseList);
    horseCardList.add(horsesCard1);
    horseCardList.add(horsesCard2);
    horseCardList.add(horsesCard3);
    horseCardList.add(horsesCard4);
    horseCardList.add(horsesCard5);

    super.initState();
  }

/*  Future<List<dynamic>> horseList() async{
    setState(() {

    });
    return horseCardList;

}*/

  late List<dynamic> horseCardList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Horses list"),
        ),
        body: Center(

            //Lorsque l on recuperera la BDD
            /*child : FutureBuilder<List>(
            future: horseList(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: horseCardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return horseCardList[index];
              });
              }else{
                const CircularProgressIndicator();
              }
            },
          )*/

            child: ListView.builder(
                itemCount: horseCardList.length,
                itemBuilder: (BuildContext context, int index) {
                  return horseCardList[index];
                })));
  }
}
