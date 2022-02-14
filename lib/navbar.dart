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
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/caportal-adhyaaya.appspot.com/o/IMG_20211118_093820.jpg?alt=media&token=5ba2ba0c-d5ca-4da1-a840-f803996c57d7',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                color: Color(0xFF01d9b2),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/caportal-adhyaaya.appspot.com/o/pexels-sam-kolder-2387873.jpg?alt=media&token=fa203180-3576-405a-b18e-8b544af1e9e4'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text('Profile', style: GoogleFonts.nunito()),
            onTap: () => {},
          ),
          const Divider(),
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
          const Divider(),
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
