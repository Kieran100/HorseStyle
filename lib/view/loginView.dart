import 'package:flutter/material.dart';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';

import '../model/user.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var user;
  @override
  Widget build(BuildContext context) {
    MongoDataBaseController.getUser().then((result) => user = result);
    var username;
    try{
      username = user["username"].toString();
    }catch(e){
      username = "await data";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Horse Stylé"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(username.toString())
          ],
        ),
      ),
    );
  }
}
