import 'package:flutter/material.dart';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  static const tag = "login_View";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var user;

  @override
  Widget build(BuildContext context) {
    MongoDataBaseController.getUserByUsername('B3r4')
        .then((result) => user = result);
    print(user);
    var username;
    try {
      username = user["username"].toString();
    } catch (e) {
      username = "await data";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("HORSE STYLE"),
      ),
      body: Center(
        child: Column(
          children: [Text(username.toString())],
        ),
      ),
    );
  }
}
