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
              //Image(image: image),
              Text ("role : DP(cavalier) et/ou propriétaire"),
              Text("name"),
              Text("adresse e-mail"),
              Text("téléphone"),
              Text("age"),
              Text ("lien vers FFE"),
              ElevatedButton(
                  onPressed:null,
                  child: Text("Modifier Profil")),




            ],
          )
      ),
    );
  }
}