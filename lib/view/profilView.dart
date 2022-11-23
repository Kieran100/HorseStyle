import 'package:flutter/material.dart';

import '../model/enumRole.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});



  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {

  final _formKey = GlobalKey<FormState>();
  Role? _role = Role.rider;
  TextEditingController nameChange = TextEditingController();
  TextEditingController emailChange = TextEditingController();
  TextEditingController passwordChange = TextEditingController();

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
              const Text ("https://sso.ffe.com/login?service=https%3A//www.ffe.com/casservice"),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed:(){
                    openDialog();
                  },
                  child: Text("Modifier Profil")),




            ],
          )
      ),
    );
  }

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
                    ListTile(
                        title:  const Text("owner"),
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