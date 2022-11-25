import 'package:flutter/material.dart';
import 'dart:async';
import 'package:horsestyle/controller/databaseController/mongo_db_controller.dart';
import 'package:horsestyle/view/competitionsView.dart';
import 'package:horsestyle/view/eventsView.dart';
import 'package:horsestyle/view/homeView.dart';
import 'package:horsestyle/view/lessonsView.dart';
import 'package:horsestyle/view/loginView.dart';
import 'package:horsestyle/view/profilView.dart';
import 'package:horsestyle/view/registerView.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDataBaseController.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HORSE STYLE',
      initialRoute: '/',
      routes: {
        LoginView.tag: (context) => const LoginView(),
        ProfilView.tag: (context) => const ProfilView(),
        RegisterView.tag: (context) => const RegisterView(),
        LessonsView.tag: (context) => const LessonsView(
              title: '',
            ),
        CompetitionsView.tag: (context) => const CompetitionsView(
              title: '',
            ),
        EventsView.tag: (context) => const EventsView(
              title: '',
            ),
        RegisterView.tag: (context) => const RegisterView(),
        MyFirstPage.tag: (context) => const MyFirstPage(
              title: '',
            ),
      },
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'HORSE STYLE'),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.brown[400],
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                onPressed: () {
                  Navigator.of(context).pushNamed(RegisterView.tag);
                },
                child: const Text('INSCRIPTION')),
            TextButton(
                style: TextButton.styleFrom(

                    backgroundColor: Colors.brown[400],
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginView.tag);
                },
                child: const Text('CONNEXION')),
          ]),
        ));
  }
}
