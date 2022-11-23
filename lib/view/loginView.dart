import 'package:flutter/material.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});



  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horse Style"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Test")
          ],
        ),
      ),
    );
  }
}