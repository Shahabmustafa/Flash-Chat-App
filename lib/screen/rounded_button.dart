import 'package:flutter/material.dart';


class RounderButton extends StatelessWidget {

  // ignore: use_key_in_widget_constructors
  const RounderButton({this.title,this.colour,required this.onPressed});

  final String? title;
  final void Function() onPressed;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(title!,
          ),
        ),
      ),
    );
  }
}
