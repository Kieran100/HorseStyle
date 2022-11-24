import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/model/lessons.dart';
import 'package:horsestyle/view/profilView.dart';
//import 'package:horsestyle/view/registerView.dart';
import 'package:intl/intl.dart';
import 'package:horsestyle/model/enum_discipline.dart';
import 'package:horsestyle/model/enum_ground.dart';


class LessonsView extends StatefulWidget {
  const LessonsView({super.key, required this.title});

  static const tag = "lessons_Page";

  final String title;

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {

  Ground?_ground = Ground.career;
 Discipline? _discipline = Discipline.dressage;




  late final bool readOnly;


  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  String hrCounter = '00';
  String minCounter = '00';

  String temp="";

  final TextEditingController hoursController = TextEditingController();


 /* void _incrementCounter(){
    setState(() {
    //  LessonsObj lessonsObj = LessonsObj(careerController.text, horseRideController.text, hoursController.text, dateinput.text,dressageController.text,jumpsController.text,enduranceController.text);


    });
  } */



  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          const Text ("Terrain"),
          ListTile(
            title: Text("Carrière"),
            leading: Radio<Ground>(
            value: Ground.career,
            groupValue: _ground,
            onChanged: (value){
              setState(() {
                _ground = value;
              });
            },

            )),
       ListTile(
            title: Text("Manège"),
            leading: Radio<Ground> (
            value: Ground.horseRide,
            groupValue: _ground,
            onChanged: (value){
              setState(() {
                _ground = value;
              });
            },

            ) ),
    TextField(
    controller: dateinput, //editing controller of this TextField
    decoration: const InputDecoration(
    icon: Icon(Icons.calendar_today), //icon of text field
    labelText: "Date" //label text of field
    ), //  const Text ("Date"),
          readOnly: true,  //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context, initialDate: DateTime.now(),
                firstDate: DateTime.now(), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101)
            );

            if(pickedDate != null ){
              //print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
              String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
              print(formattedDate); //formatted date output using intl package =>  16-03-2021
              //you can implement different kind of Date Format here according to your requirement

              setState(() {
                dateinput.text = formattedDate; //set output date to TextField value.
              });
            }else{
              print("Date non séléctionnée");
            }}),


      TextFormField(
        controller: hoursController,
        keyboardType:
        const TextInputType.numberWithOptions(decimal: false),
        inputFormatters: [
          LengthLimitingTextInputFormatter(9),
        ],
        decoration: InputDecoration(
            hintText: '$hrCounter:$minCounter',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Horaire'),
        onChanged: (val) {
          String y="";
          switch (val.length) {
            case 0:
              setState(() {
                hrCounter = "00";
                minCounter = "00";
              });
              break;
            case 1:
              setState(() {
                temp=val;
                hoursController.value = hoursController.value.copyWith(
                  text: "$hrCounter:$minCounter",
                  selection: const TextSelection.collapsed(offset: 8),
                );
              });
              break;
            default: setState((){
              for(int i=1;i<=val.length-1;i++){
                y=y+val.substring(i,i+1);
              }
              y=y.replaceAll(":", "");
              val="${y.substring(0,2)}:${y.substring(2,4)}";
              temp=val;
              hoursController.value = hoursController.value.copyWith(
                text: val,
                selection: const TextSelection.collapsed(offset: 8),
              );
              print(hoursController);
            });
            break;

          }
        },
      ),

           Text ("Discipline"),
          ListTile(
            title: const Text("Dressage"),
            leading: Radio<Discipline>(
            value: Discipline.dressage,
            groupValue: _discipline,
            onChanged: (value){
              setState(() {
                _discipline = value;
              });
            },

            ) ),
          ListTile(
            title: const Text("Saut d'obstacle"),
            leading: Radio<Discipline>(
            value: Discipline.jumps,
            groupValue: _discipline,
            onChanged: (value){
              setState(() {
                _discipline = value;
              });
            },

            )),
          ListTile(
            title: const Text("Endurence"),
            leading: Radio<Discipline>(
            value: Discipline.endurance,
            groupValue: _discipline,
            onChanged: (value){
              setState(() {
                _discipline = value;
              });
            },

            ) ),
            TextButton(
              onPressed: () {
            //    _incrementCounter().clear;
                Lessons lesson = Lessons(_discipline!, _ground!, dateinput.text, hoursController.text);
                print(lesson.ground.toString().split('.').last);
                print(lesson.ground.toString().split('.').last.runtimeType);
                Navigator.pop(context, 'Valider');
              },
              child: const Text('Valider'),
            ),

        ]),
    );



  }
}