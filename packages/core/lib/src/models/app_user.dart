import 'user_role.dart';

/// Profil utilisateur stocke dans Firestore (collection `users`).
class AppUser {
  const AppUser({
    required this.id,
    required this.role,
    this.name,
    this.phoneNumber,
    this.country,
    this.shopId,
  });

  final String id;
  final UserRole role;
  final String? name;
  final String? phoneNumber;
  final String? country;
  final String? shopId;

  factory AppUser.fromMap(String id, Map<String, dynamic> map) {
    return AppUser(
      id: id,
      role: UserRole.fromString(map['role'] as String? ?? 'client'),
      name: map['name'] as String?,
      phoneNumber: map['phoneNumber'] as String?,
      country: map['country'] as String?,
      shopId: map['shopId'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role.name,
      'name': name,
      'phoneNumber': phoneNumber,
      'country': country,
      'shopId': shopId,
    };
  }
}