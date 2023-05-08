import 'package:flashchatingapp/screens/chat_screen.dart';
import 'package:flashchatingapp/screens/login_screen.dart';
import 'package:flashchatingapp/screens/registration_screen.dart';
import 'package:flashchatingapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  // const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme:TextTheme(
          bodyText1:TextStyle(color: Colors.black54)
        )
      ),
      initialRoute: WelcomeScreen.id, //Creating object and then accessing
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=>ChatScreen()
      },
      home: WelcomeScreen(),
    );
  }
}
