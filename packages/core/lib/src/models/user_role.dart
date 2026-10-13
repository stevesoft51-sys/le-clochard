/// Role d'un utilisateur de la plateforme.
enum UserRole {
  client,
  employe,
  admin,
  proprietaire;

  String get label {
    switch (this) {
      case UserRole.client:
        return 'client';
      case UserRole.employe:
        return 'employe';
      case UserRole.admin:
        return 'admin';
      case UserRole.proprietaire:
        return 'proprietaire';
    }
  }

  static UserRole fromString(String value) {
    return UserRole.values.firstWhere(
      (role) => role.name == value,
      orElse: () => UserRole.client,
    );
  }
}