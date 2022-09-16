import 'package:flash_chat/screen/login_page.dart';
import 'package:flash_chat/screen/register_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screen/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

 static const String id = "welcome_screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
      upperBound: 100,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: SizedBox(
                    height: controller.value,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                    TypewriterAnimatedTextKit(
                      text: const ['Flash Chat'],
                        speed: const Duration(milliseconds: 250),
                      textStyle: const TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                                ),
                ),
                const SizedBox(
                  height: 48.0,
                ),
              ],
            ),
            RounderButton(
              title: 'Login',
              colour: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context,LoginPage.id);
              },
            ),
            RounderButton(
              title: 'Register',
              colour: Colors.blueAccent[900],
              onPressed: (){
                Navigator.pushNamed(context,RegisterPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}