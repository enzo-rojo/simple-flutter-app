import 'package:flutter/material.dart';
import 'package:simple_flutter_app/screens/dashboard/home.dart';
import 'package:simple_flutter_app/screens/public.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:simple_flutter_app/screens/services/UserService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  UserService _userService = UserService();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: StreamBuilder(
        stream: _userService.user,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return HomeScreen();
            }

            return PublicScreen();
          }

          return SafeArea(
              child: Scaffold(
            body: Center(
              child: Text("Loading"),
            ),
          ));
        },
      ),
    );
  }
}
