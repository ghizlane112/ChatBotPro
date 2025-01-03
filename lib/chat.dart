import 'package:flutter/material.dart';
import 'AppDrawer.dart'; // Importer le fichier du menu

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Widget> _messages = [
    const BotMessage(message: "Welcome to the Tourist Chatbot!")
  ];

  void _sendMessage() {
    final message = _controller.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(UserMessage(message: message));
        _messages.add(BotMessage(message: "You said: $message")); // Simulated bot response
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tourist Chatbot'),
        backgroundColor: Colors.teal, // AppBar avec la couleur teal
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu), // Icône de menu (remplaçant la flèche)
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Ouvrir le menu latéral (Drawer)
            },
          ),
        ),
      ),
      drawer: AppDrawer(), // Inclure le menu latéral
      body: SafeArea(
        child: Column(
          children: [
            // Section des messages
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: _messages,
              ),
            ),
            // Barre de saisie du message
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(color: Colors.grey.shade600),
                        filled: true,
                        fillColor: Colors.grey.shade100, // Fond du champ de texte
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.teal), // Couleur teal pour l'icône
                    onPressed: _sendMessage, // Appeler la fonction d'envoi
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget des messages utilisateurs
class UserMessage extends StatelessWidget {
  final String message;

  const UserMessage({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: const Color(0xFF7C3AED),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

// Widget des messages chatbot
class BotMessage extends StatelessWidget {
  final String message;

  const BotMessage({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

// Widget pour afficher "Typing..." (indicateur)
class TypingIndicator extends StatelessWidget {
  const TypingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.more_horiz, color: Colors.grey),
        SizedBox(width: 8),
        Text(
          "Typing...",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
