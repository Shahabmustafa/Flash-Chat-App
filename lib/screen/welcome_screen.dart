import 'package:flash_chat/screen/login_page.dart';
import 'package:flash_chat/screen/register_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {

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
      duration: Duration(seconds: 1),
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
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller.value,
                  ),
                ),
                    TypewriterAnimatedTextKit(
                      text: ['Flash Chat'],
                        speed: Duration(milliseconds: 250),
                      textStyle: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                                ),
                ),
                SizedBox(
                  height: 48.0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context,LoginPage.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Log In'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context,RegisterPage.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Register'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
