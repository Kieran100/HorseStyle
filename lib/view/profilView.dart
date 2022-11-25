import 'package:flutter/material.dart';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/model/user.dart';

import '../model/enumRole.dart';
import 'horseListView.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});

  static const tag = "profil_view";

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  
  final _formKey = GlobalKey<FormState>();
  Role? _role = Role.rider;
  TextEditingController nameChange = TextEditingController();
  TextEditingController emailChange = TextEditingController();
  TextEditingController passwordChange = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController age = TextEditingController();

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
              const SizedBox(height: 30),
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
              Text("nom"),
              const SizedBox(height: 30),
              Text("adresse e-mail"),
              const SizedBox(height: 30),
              Text("téléphone"),
              const SizedBox(height: 30),
              Text("age"),
              const SizedBox(height: 30),
              const Text ("https://www.ffe.com/"),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              ElevatedButton(
                  onPressed:(){
                    openDialog();
                  },
                  child: const Text("Modifier Profil")),
                  const SizedBox(width: 50),
                  ElevatedButton(onPressed:(){

                      Navigator.of(context).pushNamed(HorseListView.tag);
                  },
                      child: const Text("Horse List"))

             ])  ],
          )
      ),
    );
  }

  // Cliquez sur le bouton modifier ouvre une boite de dialogue permettant de modifier les informations perso

  openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: const Text("Personnalité"),
          content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)
              {return Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormField(
                        decoration: const InputDecoration(labelText: "name"),
                        controller: nameChange,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        }),
                    TextFormField(
                        decoration: const InputDecoration(labelText: "E-mail"),
                        controller: emailChange,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        }),
                    TextFormField(
                        decoration: const InputDecoration(labelText: "Password"),
                        controller: passwordChange,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        }),
                    TextFormField(
                        decoration: const InputDecoration(labelText: "Phone Number"),
                        controller: age,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        }),
                    TextFormField(
                        decoration: const InputDecoration(labelText: "Age"),
                        controller: phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        }),
                    ListTile(
                        title:  const Text("Owner"),
                        leading: Radio<Role>(
                          value: Role.owner,
                          groupValue: _role,
                          onChanged: (Role? value) {
                            setState(() {
                              _role = value;
                            });
                          },
                        ) ),
                    ListTile(
                        title:  const Text("Horse Owner"),
                        leading: Radio<Role>(
                          value: Role.horseOwner,
                          groupValue: _role,
                          onChanged: (Role? value) {
                            setState(() {
                              _role = value;
                            });
                          },
                        ) ),
                    ListTile(
                        title:  const Text("Rider"),
                        leading: Radio<Role>(
                          value: Role.rider,
                          groupValue: _role,
                          onChanged: (Role? value) {
                            setState(() {
                              _role = value;
                            });
                          },
                        ) ),
                    ElevatedButton(
                        onPressed: () {
                              const SnackBar(content: Text('Valider'));
                          Navigator.of(context).pop();
                        },
                        child: const Text("Valider")),
                  ]));})));
}