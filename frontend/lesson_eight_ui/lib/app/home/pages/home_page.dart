import 'package:flutter/material.dart';
import 'package:lesson_eight_ui/app/users/data/users_notifier.dart';
import 'package:lesson_eight_ui/app/users/pages/users_page.dart';
import 'package:provider/provider.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Portal'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          context.read<UsersNotifier>().getUsers();

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const UsersPage(),
            ),
          );
        },
        child: const Text('Users'),
      )),
    );
  }
}
