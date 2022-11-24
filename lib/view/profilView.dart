import 'package:flutter/material.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});

  static const tag = "profil_Page";

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
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                      fit: BoxFit.fill
                  ),
                ),
              ),
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