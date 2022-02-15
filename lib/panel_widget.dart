import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.black,
              thickness: MediaQuery.of(context).size.height * 0.0035,
              height: MediaQuery.of(context).size.height * 0.015,
              endIndent: MediaQuery.of(context).size.width * 0.40,
              indent: MediaQuery.of(context).size.width * 0.40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Next Cleaning',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 2),
              width: double.infinity,
              child: const Card(
                color: Colors.black,
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 2),
              width: double.infinity,
              child: const Card(
                color: Colors.black,
              ),
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 2),
              width: double.infinity,
              child: const Card(
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}
