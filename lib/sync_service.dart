import 'dart:convert';
import 'package:http/http.dart' as http;

class SyncService {
  // L'URL de base de votre backend FastAPI
  static const String baseUrl = 'http://127.0.0.1:8000/api'; // Remplacez cette URL si votre backend est hébergé ailleurs.

  /// Synchronise un utilisateur avec le backend FastAPI
  /// [uid] : Identifiant unique Firebase
  /// [email] : Email de l'utilisateur
  Future<void> syncUserWithMySQL(String uid, String email) async {
    const String endpoint = '$baseUrl/users/sync/';

    try {
      final url = Uri.parse(endpoint);

      // Préparation de la requête POST
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'uid': uid,
          'email': email,
        }),
      );

      // Gestion de la réponse
      if (response.statusCode == 200) {
        print("Utilisateur synchronisé avec succès : ${response.body}");
      } else {
        print(
            "Échec de la synchronisation : Code ${response.statusCode}, Message: ${response.body}");
        throw Exception("Erreur de synchronisation utilisateur");
      }
    } catch (e) {
      print("Erreur lors de la synchronisation : $e");
      throw Exception("Erreur de communication avec le backend");
    }
  }

  /// Authentifie un utilisateur en se connectant au backend
  /// [email] : Email de l'utilisateur
  Future<void> loginUser(String email) async {
    const String endpoint = '$baseUrl/users/login/';

    try {
      final url = Uri.parse(endpoint);

      // Préparation de la requête POST
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'email': email,
        }),
      );

      // Gestion de la réponse
      if (response.statusCode == 200) {
        print("Utilisateur connecté avec succès : ${response.body}");
      } else {
        print(
            "Échec de la connexion : Code ${response.statusCode}, Message: ${response.body}");
        throw Exception("Erreur de connexion utilisateur");
      }
    } catch (e) {
      print("Erreur lors de la connexion : $e");
      throw Exception("Erreur de communication avec le backend");
    }
  }
}
