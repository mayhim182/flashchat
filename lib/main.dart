import 'package:firebase_core/firebase_core.dart';
import 'package:flashchatingapp/screens/chat_screen.dart';
import 'package:flashchatingapp/screens/login_screen.dart';
import 'package:flashchatingapp/screens/registration_screen.dart';
import 'package:flashchatingapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  // const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

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
