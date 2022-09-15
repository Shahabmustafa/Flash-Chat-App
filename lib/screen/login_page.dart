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
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
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
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context,WelcomeScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text('Log In'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
