import 'package:flutter/material.dart';
import 'package:horsestyle/model/user.dart';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:mongo_dart/mongo_dart.dart'as m;

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  static const tag = "RegisterView";

  @override
  State<RegisterView> createState() => _RegisterViewState();

  }


class _RegisterViewState extends State<RegisterView> {

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void addUserToDB(username, email, password){
    m.ObjectId id = m.ObjectId.parse("637df7046dfeac3c633d9aad");
    UserModel user = UserModel(id, username, email, password, 0, false, false, false);
    MongoDataBaseController.setUser(user);
  }

  void searchUserToBD(username,email,password) async{
    print("zonfzbz");
    await MongoDataBaseController.getUserByUsername(username).then((value){
      if(value != null){
        addUserToDB(username, email, password);
        //print(addUserToDB(username, email, password))
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Horse Style"),
      ),
      body: Center(

        child: Form( key: _formKey,
           child :Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  textAlign: TextAlign.center,
                  controller: username,
                  decoration: const InputDecoration(
                      hintText: 'entrer votre nom',
                      border: OutlineInputBorder()

                  ),
                  validator: ( value) {
                    if (value == null || value.isEmpty) {
                      return 'pas de nom';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),

                TextFormField(
                  textAlign: TextAlign.center,
                  controller: email,
                  decoration: const InputDecoration(
                      hintText: 'entrer votre email',
                      border: OutlineInputBorder()

                  ),
                  validator: ( value) {
                    if (value == null || value.isEmpty) {
                      return 'pas d adresse mail';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  textAlign: TextAlign.center,
                  controller: password,
                  decoration: const InputDecoration(
                      hintText: 'Mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: ( value) {
                    if (value == null || value.isEmpty) {
                      return 'pas de mot de passe';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10.0),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      addUserToDB(username.text, email.text, password.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Merci pour votre inscription !')),
                      );
                    };
                  },
                  child: const Text('Inscription'),
                ),
              ]
          ),
        )
      ),
    );
  }
}






