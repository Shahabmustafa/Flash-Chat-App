import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class ChatPage extends StatefulWidget {

 static const String id = "chat_app";

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              Navigator.pushNamed(context,WelcomeScreen.id);
            },
          ),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    onChanged: (value){
                    },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                    },
                    child: Text('Send',
                    style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
