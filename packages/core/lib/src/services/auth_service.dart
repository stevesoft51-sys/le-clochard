import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/app_user.dart';

/// Service d'authentification et de gestion du profil utilisateur.
class AuthService {
  AuthService({FirebaseAuth? auth, FirebaseFirestore? firestore})
      : _auth = auth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Stream<AppUser?> get userChanges {
    return _auth.authStateChanges().asyncMap((firebaseUser) async {
      if (firebaseUser == null) {
        return null;
      }
      return fetchUser(firebaseUser.uid);
    });
  }

  Future<AppUser?> fetchUser(String uid) async {
    final DocumentSnapshot<Object?> doc =
        await _firestore.collection('users').doc(uid).get();
    if (!doc.exists) {
      return null;
    }
    return AppUser.fromMap(
      doc.id,
      (doc.data() as Map<String, dynamic>?) ?? const <String, dynamic>{},
    );
  }

  Future<void> createProfile(AppUser user) async {
    await _firestore
        .collection('users')
        .doc(user.id)
        .set(user.toMap(), SetOptions(merge: true));
  }

  Future<void> updateProfile(AppUser user) async {
    await _firestore
        .collection('users')
        .doc(user.id)
        .set(user.toMap(), SetOptions(merge: true));
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}