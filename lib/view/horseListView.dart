import 'package:flutter/material.dart';

class HorseListView extends StatefulWidget {
  const HorseListView({super.key});

  @override
  State<HorseListView> createState() => _HorseListViewState();
}

class _HorseListViewState extends State<HorseListView> {
  int _count = 0;

  //exo 3


  List<Widget> widgetCard = [];

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

 // Future<List<Horse>> horseList() {
  //  setState(() {
      //recuperer les horse du model Horse
   // });
  //}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("paye ta carte"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_box),
              onPressed: () {

              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 5,
            onPressed: () {
              //randowCardWidget();
            }),
        body: Center(
            child: ListView.builder(
                itemCount: _count,
                itemBuilder: (BuildContext context, int index) {
                  return widgetCard[index];
                })));
  }
}