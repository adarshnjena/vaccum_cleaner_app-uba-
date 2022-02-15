import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:uba_app/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uba_app/panel_widget.dart';
import 'package:uba_app/rounded_icon_btn.dart';
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
            RoundIconButton(
              icon: Icons.mode_night,
              onPressed: () {
                print("hello");
              },
              size: MediaQuery.of(context).size.width * 0.08,
              widthANDheight: MediaQuery.of(context).size.width * 0.1,
              fillcolor: const Color(0xFF01d9b2),
              buttonColor: Colors.white,
            ),
          ],
        ),
        backgroundColor: const Color(0xFF01d9b2),
      ),
      body: SlidingUpPanel(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
        minHeight: MediaQuery.of(context).size.height * 0.09,
        body: const MainPage(),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}
