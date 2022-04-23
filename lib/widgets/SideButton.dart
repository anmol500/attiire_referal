import 'package:flutter/material.dart';

class SideButtons extends StatelessWidget {
  SideButtons({
    Key? key,
    this.text,
    required this.icon,
    required this.onPress,
    this.color,
    this.textColor,
  }) {
    if (this.textColor == null) {
      this.textColor = color;
    } else {}
  }
  final color;
  final VoidCallback onPress;
  final text;
  var textColor;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5),
      child: ElevatedButton(
        style: sideButtonStyle(),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            FittedBox(
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: sideButtonTextStyle(),
              ),
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
        onPressed: onPress,
      ),
    );
  }

  ButtonStyle sideButtonStyle() {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size?>(Size(2, 15)),
      shadowColor: MaterialStateProperty.all<Color>(Colors.white),
      minimumSize: MaterialStateProperty.all<Size>(Size.fromHeight(50)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  TextStyle sideButtonTextStyle() {
    return TextStyle(
        color: textColor, fontSize: 14.0, fontWeight: FontWeight.bold);
  }
}
