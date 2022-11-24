import 'package:flutter/material.dart';
import 'dart:async';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/view/competitionsView.dart';
import 'package:horsestyle/view/eventsView.dart';
import 'package:horsestyle/view/homeView.dart';
import 'package:horsestyle/view/lessonsView.dart';
import 'package:horsestyle/view/loginView.dart';
import 'package:horsestyle/view/profilView.dart';
<<<<<<< HEAD
//import 'package:horsestyle/view/registerView.dart'

=======
import 'package:horsestyle/view/registerView.dart';
>>>>>>> 42728041f570687582a8b30ac03f5536ab7a7a1a

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDataBaseController.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HORSE STYLE',
    //  routes: { LoginView.tag : (context) => const LoginView(),
      //  RegisterView.tag : (context) => const RegisterView(),

   //   },
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
<<<<<<< HEAD
      home: const MyFirstPage(title: 'HORSE STYLE'),
=======
      home: const RegisterView(),
>>>>>>> 42728041f570687582a8b30ac03f5536ab7a7a1a
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentPageIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Bg-cheval.png'),
              fit: BoxFit.cover,

            ),

          ),
        child: Column(
          children: [
          TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.brown[400],
          foregroundColor: Colors.black,

              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),

              )
          ),
            onPressed: () {
            //  Navigator.of(context).pushNamed(RegisterView.tag);
            },
            child: const Text('INSCRIPTION')),

         TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.brown[400],
              foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),

                )
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(LoginView.tag);
            },
            child: const Text('CONNEXION')),


      ]),



      ));

  }
}

