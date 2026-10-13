import 'package:firebase_core/firebase_core.dart';

/// Initialisation de Firebase au demarrage de chaque application.
abstract final class AppFirebase {
  static Future<void> configure(FirebaseOptions options) async {
    await Firebase.initializeApp(options: options);
  }
}