import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Nom d'utilisateur fictif
    String userName = 'User';  // Utilisateur fictif
    String firstLetter = 'U';  // Première lettre fictive du nom d'utilisateur

    return Drawer(
      child: Column(
        children: [
          // DrawerHeader avec un fond dégradé
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal.shade600, // Couleur plus foncée du gradient
                  Colors.teal.shade400, // Couleur moins foncée du gradient
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Afficher la première lettre de l'utilisateur dans un cercle
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Text(
                    firstLetter, // Afficher la première lettre de l'utilisateur
                    style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
                  ),
                ),
                // Afficher le nom d'utilisateur
                Text(
                  userName,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),

          // Menu principal
          ListTile(
            leading: Icon(Icons.chat, color: Colors.teal),
            title: Text("Chat"),
            onTap: () {
              Navigator.pushNamed(context, '/chat'); // Navigation vers la page Chat
            },
          ),
          const Divider(thickness: 1.0, color: Colors.teal),

          ListTile(
            leading: Icon(Icons.person, color: Colors.teal),
            title: Text("Profile"),
            onTap: () {
              Navigator.pushNamed(context, '/profile'); // Navigation vers la page Profile
            },
          ),
          const Divider(thickness: 1.0, color: Colors.teal),

          ListTile(
            leading: Icon(Icons.history, color: Colors.teal),
            title: Text("History"),
            onTap: () {
              Navigator.pushNamed(context, '/history'); // Navigation vers la page History
            },
          ),
          const Divider(thickness: 1.0, color: Colors.teal),

          ListTile(
            leading: Icon(Icons.favorite, color: Colors.teal),
            title: Text("Favorites"),
            onTap: () {
              Navigator.pushNamed(context, '/favorites'); // Navigation vers la page Favorites
            },
          ),
          const Divider(thickness: 1.0, color: Colors.teal),

          ListTile(
            leading: Icon(Icons.map, color: Colors.teal),
            title: Text("Itinerary"),
            onTap: () {
              Navigator.pushNamed(context, '/itinerary'); // Navigation vers la page Itinerary
            },
          ),
          const Divider(thickness: 1.0, color: Colors.teal),
        ],
      ),
    );
  }
}
