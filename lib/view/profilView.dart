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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
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
              const SizedBox(height: 30),
              Text ("role : DP(cavalier) et/ou propriétaire"),
              const SizedBox(height: 30),
              Text("name"),
              const SizedBox(height: 30),
              Text("adresse e-mail"),
              const SizedBox(height: 30),
              Text("téléphone"),
              const SizedBox(height: 30),
              Text("age"),
              const SizedBox(height: 30),
              Text ("lien vers FFE"),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed:null,
                  child: Text("Modifier Profil")),




            ],
          )
      ),
    );
  }
}