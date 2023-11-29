import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lesson_eight_ui/app/home/pages/home_page.dart';
import 'package:lesson_eight_ui/app/users/data/users_notifier.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => UsersNotifier(
            initialState: [],
          ),
      child: const App()));
}

final class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
