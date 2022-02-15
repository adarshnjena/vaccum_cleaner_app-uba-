import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF01d9b2),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Adarsh Jena', style: GoogleFonts.nunito()),
            accountEmail:
                Text('adarsshnjena@gmail.com', style: GoogleFonts.nunito()),
            currentAccountPicture: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            decoration: const BoxDecoration(
                color: Color(0xFF01d9b2),
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text('Profile', style: GoogleFonts.nunito()),
            onTap: () => {},
          ),
          const Divider(color: Colors.black12),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: Text('Notifications', style: GoogleFonts.nunito()),
            onTap: () => {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.policy),
            title: Text('instructions', style: GoogleFonts.nunito()),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text('settings', style: GoogleFonts.nunito()),
            onTap: () => {},
          ),
          const Divider(color: Colors.black12),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text('Exit', style: GoogleFonts.nunito()),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text('Logout', style: GoogleFonts.nunito()),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
