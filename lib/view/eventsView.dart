import 'package:flutter/material.dart';
import 'dart:async';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/view/lessonsView.dart';
import 'package:horsestyle/view/loginView.dart';
import 'package:horsestyle/view/profilView.dart';
//import 'package:horsestyle/view/registerView.dart'


class EventsView extends StatefulWidget {
  const EventsView({super.key, required this.title});

  static const tag = "events_Page";

  final String title;

  @override
  State<EventsView> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {

  int currentPageIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),

        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Bg-cheval.png'),
              fit: BoxFit.cover,

            ),

          ),



        ));

  }
}

