import 'package:flash_chat/screen/chat_page.dart';
import 'package:flash_chat/screen/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class RegisterPage extends StatefulWidget {

  static const String id = "register_page";

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> with SingleTickerProviderStateMixin{

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
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: "logo",
              child: SizedBox(
                height: controller.value,
                child: Image.asset('images/logo.png'),
              ),
            ),

            const SizedBox(
              height: 48.0,
            ),
            TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              onChanged: (value){
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Name'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            // Email TextField
            TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              onChanged: (value){
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            // Password TextField
            TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              onChanged: (value){
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Password'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RounderButton(
              title: "Register",
              colour: Colors.blueAccent[900],
              onPressed: (){
                Navigator.pushNamed(context,ChatPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}


