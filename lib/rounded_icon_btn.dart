import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final double size;
  final Color fillcolor;
  final Color buttonColor;
  final double widthANDheight;

  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.size,
    this.fillcolor = const Color(0xFF000000),
    this.buttonColor = const Color.fromARGB(221, 134, 131, 131),
    required this.widthANDheight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: size,
        color: buttonColor,
      ),
      constraints: BoxConstraints.tightFor(
        width: widthANDheight,
        height: widthANDheight,
      ),
      shape: const CircleBorder(),
      fillColor: fillcolor,
      onPressed: () {
        onPressed();
      },
      elevation: 0,
    );
  }
}
