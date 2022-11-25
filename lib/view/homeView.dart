import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert_rounded),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(CompetitionsView.tag);
            },
          ),
          IconButton(
            icon: const Icon(Icons.play_lesson_outlined),
            color: Colors.white,
            onPressed: () {
                Navigator.of(context).pushNamed(LessonsView.tag);
            },
          ),
          IconButton(
            icon: const Icon(Icons.emoji_events_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(EventsView.tag);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(ProfilView.tag);
            },
          ),
        ],
      ),
      body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Bg-cheval.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(children: [])),
    );
  }
}
