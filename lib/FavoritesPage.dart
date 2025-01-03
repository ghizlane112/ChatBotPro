import 'package:flutter/material.dart';
import 'AppDrawer.dart';  // Importer la classe AppDrawer

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.teal,  // Couleur uniforme de l'AppBar
        elevation: 0,
      ),
      drawer: AppDrawer(),  // Utiliser le Drawer ici
      body: Center(
        child: Text('Your favorite places will appear here.'),
      ),
    );
  }
}
