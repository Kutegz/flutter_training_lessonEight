import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lesson_eight_ui/app/users/models/user.dart';

final class UsersNotifier extends ChangeNotifier {
  List<User> _users;

  UsersNotifier({required List<User> initialState}) : _users = initialState;

  List<User> get users => _users;

  Future<List<User>> getUsers() async {
    // const url = 'http://10.0.2.2:4000/users';
    const url = 'http://localhost:4000/users';

    try {
      final response = await http.get(Uri.parse(url));
      final data = jsonDecode(response.body) as List;

      _users = data.map((user) => User.fromJson(user)).toList();

      debugPrint(_users[0].firstname);
      debugPrint(_users[0].isActive.toString());
      debugPrint(_users[0].loginLevel.toString());
      notifyListeners();
      return _users;
    } catch (e) {
      debugPrint(e.toString());
      return _users;
    }
  }
}
