import 'package:flash_chat/screen/login_page.dart';
import 'package:flash_chat/screen/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flash_chat/screen/chat_page.dart';

void main() {
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54)
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
       WelcomeScreen.id : (context) => WelcomeScreen(),
       LoginPage.id : (context) => LoginPage(),
       RegisterPage.id : (context) => RegisterPage(),
       ChatPage.id : (context) => ChatPage(),
      },
    );
  }
}

