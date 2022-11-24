import 'package:flutter/material.dart';
import 'dart:async';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/view/competitionsView.dart';
import 'package:horsestyle/view/eventsView.dart';
import 'package:horsestyle/view/profilView.dart';

import 'lessonsView.dart';


class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key, required this.title});

  static const tag = "home_Page";

  final String title;

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {

  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(ProfilView.tag);
            },
          )
        ],
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
          child: Column(
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.brown[400],
                        foregroundColor: Colors.black,

                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),

                        )
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(LessonsView.tag);
                    },
                    child: const Text('COURS')),

                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.brown[400],
                        foregroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),

                        )
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(CompetitionsView.tag);
                    },
                    child: const Text('CONCOURS')),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.brown[400],
                        foregroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),

                        )
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(EventsView.tag);
                    },
                    child: const Text('ÉVÈNEMENTS'))


              ])
      ),
    );

  }
}




