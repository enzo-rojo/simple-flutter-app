import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  final Function(int) onChangeStep;

  const AuthScreen({Key? key, required this.onChangeStep}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");

  late String _email = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: 'Everyone has\n'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(
                      text: 'knowledge\n'.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: 'to share'.toUpperCase()),
                  ])),
              SizedBox(height: 20),
              Text('It all starts here.',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              SizedBox(
                height: 50.0,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Enter your email'),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (value) =>
                            value!.isEmpty || !emailRegex.hasMatch(value)
                                ? 'Please enter a valid email'
                                : null,
                        onChanged: (value) => setState(() => _email = value),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'Ex: john.doe@domain.tld',
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10.0),
                        ),
                        onPressed: (!emailRegex.hasMatch(_email)
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, we want to show the next screen
                                  widget.onChangeStep(1);
                                }
                              }),
                        child: Text(
                          'Suivant',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
