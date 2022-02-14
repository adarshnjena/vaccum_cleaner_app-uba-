import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/caportal-adhyaaya.appspot.com/o/Untitled%20design.png?alt=media&token=b902d61a-c8d8-4a90-8ec9-a07b30639073'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Charging in Kitchen 50%',
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: const Color.fromARGB(255, 128, 141, 139),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.schedule_send_rounded,
              size: 50,
              color: Color.fromARGB(221, 134, 131, 131),
            ),
            Icon(
              Icons.play_circle,
              color: Color(0xFF01d9b2),
              size: 100,
            ),
            Icon(
              Icons.map_rounded,
              size: 50,
              color: Color.fromARGB(221, 134, 131, 131),
            )
          ],
        )
      ],
    );
  }
}
