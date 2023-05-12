import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:flashchatingapp/components/rounded_button.dart';

import 'package:flashchatingapp/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flashchatingapp/constants.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../components/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  static String id='login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth=FirebaseAuth.instance;
  bool showSpinner=false;
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  //Do something with user input
                  email=value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  // Do something with the user input
                  password=value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(Colors.lightBlueAccent,'Login',(){
                setState(() {
                  showSpinner=true;
                });
                try {
                  _auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  Navigator.pushNamed(context, ChatScreen.id);
                  setState(() {
                    showSpinner=false;
                  });
                }
                catch(e){
                  print(e);
                }

              }),
            ],
          ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with user input
                email=value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                // Do something with the user input
                  password=value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(Colors.lightBlueAccent, 'Login', () async{
              try {
                final user = await _auth.signInWithEmailAndPassword(
                    email: email, password: password);
                if (user != null) {
                  Navigator.pushNamed(context,ChatScreen.id);
                }
              }
              catch(e){
                print(e);
              }
            }),
          ],
        ),
      ),
    );
  }
}
