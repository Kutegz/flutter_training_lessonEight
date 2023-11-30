import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lesson_eight_ui/app/users/data/users_provider.dart';

final class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = context.watch<UsersProvider>().users;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text('${user.firstname} ${user.lastname}'),
            subtitle: Row(
                children: user.roles
                    .map((role) => Text(
                          '$role ',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ))
                    .toList()),
          );
        },
      ),
    );
  }
}
