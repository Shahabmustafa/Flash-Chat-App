import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screen/rounded_button.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  static const String id = "login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>with SingleTickerProviderStateMixin{

  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 100,
    );
    controller.forward();
    // controller.u
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
            Hero(
              tag: 'logo',
              child: Container(
                height: controller.value,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            // Email TextField
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (value){
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 10.0,
            ),
            // Password TextField
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (value){
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Password')
            ),
            SizedBox(
              height: 20.0,
            ),
            RounderButton(
              title: 'Login',
              colour: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context,WelcomeScreen.id);
              }
            ),
          ],
        ),
      ),
    );
  }
}
