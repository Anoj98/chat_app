import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color buttoncolor;
  final String text;
  final Function() onPress;

  const RoundedButton({
    super.key,
    required this.buttoncolor,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttoncolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
