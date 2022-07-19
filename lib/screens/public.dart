import 'package:flutter/material.dart';
import 'package:simple_flutter_app/models/UserModel.dart';
import 'package:simple_flutter_app/screens/dashboard/home.dart';
import 'package:simple_flutter_app/screens/public/auth.dart';
import 'package:simple_flutter_app/screens/public/password.dart';
import 'package:simple_flutter_app/screens/public/term.dart';
import 'package:simple_flutter_app/screens/services/UserService.dart';

class PublicScreen extends StatefulWidget {
  PublicScreen({Key? key}) : super(key: key);

  @override
  State<PublicScreen> createState() => _PublicScreenState();
}

class _PublicScreenState extends State<PublicScreen> {
  UserService _userService = UserService();

  List<Widget> _widgets = [];
  int _indexSelected = 0;

  String _email = "";

  @override
  void initState() {
    super.initState();

    _widgets.addAll([
      AuthScreen(
        onChangeStep: (index, value) => setState(() {
          _indexSelected = index;
          _email = value;
        }),
      ),
      TermScreen(
          onChangeStep: (index) => setState(() => _indexSelected = index)),
      PasswordScreen(
        onChangeStep: (index, value) => setState(() {
          if (index != null) {
            _indexSelected = index;
          }

          if (value != null) {
            UserModel userModel = UserModel(email: _email, password: value);
            _userService.auth(userModel).then((value) => {
                  if (value.uid != null)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ))
                    }
                });
          }
        }),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return _widgets.elementAt(_indexSelected);
  }
}
