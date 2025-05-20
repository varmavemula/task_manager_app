import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'screens/login_screen.dart';
import 'screens/TaskScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Parse().initialize(
    'nJAaRlEMsPfHsEpa7Dlq1VKLC8seYdzPGH0S6Hel',
    'https://parseapi.back4app.com',
    clientKey: 'lw3lOjNpxYMh2JhDhuRVNpyf0aFggho2fMLC9VHC',
    autoSendSessionId: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/tasks': (context) => const TaskScreen(),
      },
    );
  }
}
