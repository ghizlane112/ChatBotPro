import 'package:flutter/material.dart';
import 'AppDrawer.dart';  // Importer la classe AppDrawer

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.teal,  // Couleur uniforme de l'AppBar
        elevation: 0,
      ),
      drawer: const AppDrawer(),  // Utiliser le Drawer ici
      body: const Center(
        child: Text('Your favorite places will appear here.'),
      ),
    );
  }
}
