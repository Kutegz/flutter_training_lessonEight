final class User {
  final String id;
  final String firstname;
  final String lastname;
  final int loginLevel;
  final bool isActive;
  final List<String> roles;

  const User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.loginLevel,
    required this.isActive,
    required this.roles,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] ?? '',
        firstname: json['firstname'] ?? '',
        lastname: json['lastname'] ?? '',
        loginLevel: json['loginLevel'] ?? 0,
        isActive: json['isActive'] ?? false,
        roles: List<String>.from(json['roles'] ?? []),
      );
}
