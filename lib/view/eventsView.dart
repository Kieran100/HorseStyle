import 'package:flutter/material.dart';

class EventsView extends StatefulWidget {
  const EventsView({super.key, required this.title});

  static const tag = "events_Page";

  final String title;

  @override
  State<EventsView> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {


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

          /*child: ListView.builder(
            itemCount: widgetCard.length,
            itemBuilder: (BuildContext context, int index) {
              return widgetCard[index];
            },
          ),*/




        ));

  }
}

