import 'package:flutter/material.dart';
import 'package:simple_flutter_app/screens/public.dart';
import 'package:simple_flutter_app/screens/services/UserService.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserService _userService = UserService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Screen'.toUpperCase(),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await _userService.logout();

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: ((context) => PublicScreen())),
                      (route) => false);
                },
                child: Text("Logout")),
          ],
        ),
      )),
    );
  }
}
