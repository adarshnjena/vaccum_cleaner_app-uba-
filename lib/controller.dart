import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

const ballSize = 20.0;
const step = 10.0;

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("controller", style: GoogleFonts.nunito()),
            Text("X :- ${x.toStringAsFixed(2)}"),
            Text("Y :- ${y.toStringAsFixed(2)}")
          ],
        ),
        backgroundColor: const Color(0xFF01d9b2),
      ),
      body: Center(
        child: Joystick(
          listener: ((details) {
            setState(() {
              x = details.x;
              y = details.y;
            });
          }),
        ),
      ),
    );
  }
}
