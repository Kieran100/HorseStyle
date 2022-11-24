import 'package:flutter/material.dart';
import 'dart:async';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/view/profilView.dart';


class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key, required this.title});

  final String title;

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {

  int currentPageIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            color: Colors.white,
            onPressed: () {  },
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
      ),



      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Accueil',
          ),
          NavigationDestination(
                icon: Icon(Icons.book_online_outlined),
            label: 'Cours',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.celebration),
                icon: Icon(Icons.celebration),
            label: 'Évènements',
          ),
        ],
      ),

    );

  }
}

