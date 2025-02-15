import 'package:flutter/material.dart';
import 'AppDrawer.dart';  // Importer la classe AppDrawer

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: Colors.teal,  // Couleur uniforme de l'AppBar
        elevation: 0,
      ),
      drawer: const AppDrawer(),  // Utiliser le Drawer ici
      body: const Center(
        child: Text('Welcome to the History Page'),
      ),
    );
  }
}
