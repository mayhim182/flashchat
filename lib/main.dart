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
      initialRoute: ,
      routes: {
        'welcome_screen':(context)=>WelcomeScreen(),
        'login_screen': (context)=>LoginScreen(),
        'registration_screen':(context)=>RegistrationScreen(),
        'chat_screen':(context)=>ChatScreen()
      },
      home: WelcomeScreen(),
    );
  }
}
