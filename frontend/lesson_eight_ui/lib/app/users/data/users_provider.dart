import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:lesson_eight_ui/app/users/models/user.dart';

final class UsersProvider extends ChangeNotifier {
  List<User> _users;

  UsersProvider({required List<User> initialState}) : _users = initialState;

  List<User> get users => _users;

  Future<void> setUsers() async {
    // const url = 'http://10.0.2.2:4000/users';
    const url = 'http://localhost:4000/users';

    try {
      final response = await http.get(Uri.parse(url));
      final data = jsonDecode(response.body) as List;

      _users = data.map((user) => User.fromJson(user)).toList();

      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
