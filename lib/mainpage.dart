import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uba_app/rounded_icon_btn.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.09,
        ),
        Center(
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.height * 0.2,
            backgroundImage: const AssetImage('images/vacumecleaner.png'),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        Text(
          'Charging in Kitchen 50%',
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: const Color.fromARGB(255, 128, 141, 139),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIconButton(
              icon: Icons.schedule_send_rounded,
              onPressed: () {
                print("hello");
              },
              size: MediaQuery.of(context).size.height * 0.07,
              widthANDheight: MediaQuery.of(context).size.height * 0.07,
            ),
            RoundIconButton(
              icon: Icons.play_arrow,
              size: MediaQuery.of(context).size.height * 0.10,
              widthANDheight: MediaQuery.of(context).size.height * 0.11,
              fillcolor: const Color(0xFF01d9b2),
              buttonColor: Colors.black,
              onPressed: () {
                print("hello");
              },
            ),
            RoundIconButton(
              icon: Icons.map_rounded,
              onPressed: () {
                print("hello");
              },
              size: MediaQuery.of(context).size.height * 0.07,
              widthANDheight: MediaQuery.of(context).size.height * 0.07,
            ),
          ],
        )
      ],
    );
  }
}
