import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _password;

  bool _isSecret = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Text(
                  'Password'.toUpperCase(),
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Enter your password'),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          validator:  (value) => value!.length < 6 
                            ? 'Enter a password. 6 characters min are required.'
                            : null,
                          onChanged:(value) => setState(() => _password = value),
                          obscureText: _isSecret,
                          decoration: InputDecoration(
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() => _isSecret = !_isSecret);
                                  },
                                  child: Icon(_isSecret
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.grey,
                              ))),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(10.0)),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, we want to show the next screen
                                print(_password);
                              }
                            },
                            child: Text('Continue'.toUpperCase(),
                                style: TextStyle(fontSize: 20.0)))
                      ],
                    ))
              ]),
            ),
          )),
    );
  }
}
