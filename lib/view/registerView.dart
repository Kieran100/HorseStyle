import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Horse Style"),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'entrer votre nom',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'pas de nom';
                  }
                  return null;
                },
              ),
              TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'entrer votre email',
                  ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'pas d adresse mail';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Mot de passe',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'pas de mot de passe';
                  }
                  return null;
                },
              ),
               ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ]
        ),
      ),
    );
  }
}
