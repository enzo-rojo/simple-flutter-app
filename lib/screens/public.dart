import 'package:flutter/material.dart';
import 'package:simple_flutter_app/screens/public/auth.dart';
import 'package:simple_flutter_app/screens/public/password.dart';
import 'package:simple_flutter_app/screens/public/term.dart';

class PublicScreen extends StatefulWidget {
  PublicScreen({Key? key}) : super(key: key);

  @override
  State<PublicScreen> createState() => _PublicScreenState();
}

class _PublicScreenState extends State<PublicScreen> {
  List<Widget> _widgets = [];
  int _indexSelected = 0;

  @override
  void initState() {
    super.initState();

    _widgets.addAll([
      AuthScreen(onChangeStep: (index) => setState(() => _indexSelected = index)), 
      TermScreen(onChangeStep: (index) => setState(() => _indexSelected = index)), 
      PasswordScreen(onChangeStep: (index) => setState(() => _indexSelected = index))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return _widgets.elementAt(_indexSelected);
  }
}
