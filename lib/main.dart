import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:uba_app/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Vacume Cleaner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const NavBar(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title, style: GoogleFonts.nunito()),
            const Icon(Icons.mode_night),
          ],
        ),
        backgroundColor: const Color(0xFF01d9b2),
      ),
      body: SlidingUpPanel(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
        minHeight: 50,
        body: const MainPage(),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}

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
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
