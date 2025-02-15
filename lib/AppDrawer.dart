import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Nom d'utilisateur fictif
    String userName = 'User'; // Utilisateur fictif
    String firstLetter = 'U'; // Première lettre fictive du nom d'utilisateur

    return Drawer(
      child: Container(
        color: const Color(0xFF0A192F), // Fond sombre
        child: Column(
          children: [
            // DrawerHeader avec le même style sombre
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF7C3AED), // Violet du gradient
                    Color(0xFF5C2F8A), // Violet plus foncé
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Cercle avec la première lettre
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Text(
                      firstLetter,
                      style: const TextStyle(
                        color: Color(0xFF7C3AED),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Nom d'utilisateur
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Menu principal
            ListTile(
              leading: const Icon(Icons.chat, color: Color(0xFF7C3AED)),
              title: const Text(
                "Chat",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/chat'); // Navigation vers la page Chat
              },
            ),
            const Divider(thickness: 1.0, color: Color(0xFF7C3AED)),

            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFF7C3AED)),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/profile'); // Navigation vers la page Profile
              },
            ),
            const Divider(thickness: 1.0, color: Color(0xFF7C3AED)),

            ListTile(
              leading: const Icon(Icons.history, color: Color(0xFF7C3AED)),
              title: const Text(
                "History",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/history'); // Navigation vers la page History
              },
            ),
            const Divider(thickness: 1.0, color: Color(0xFF7C3AED)),

            ListTile(
              leading: const Icon(Icons.favorite, color: Color(0xFF7C3AED)),
              title: const Text(
                "Favorites",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/favorites'); // Navigation vers la page Favorites
              },
            ),
            const Divider(thickness: 1.0, color: Color(0xFF7C3AED)),

            ListTile(
              leading: const Icon(Icons.map, color: Color(0xFF7C3AED)),
              title: const Text(
                "Itinerary",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/itinerary'); // Navigation vers la page Itinerary
              },
            ),
            const Divider(thickness: 1.0, color: Color(0xFF7C3AED)),
          ],
        ),
      ),
    );
  }
}
