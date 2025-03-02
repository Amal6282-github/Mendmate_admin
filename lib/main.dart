import 'package:flutter/material.dart';
import 'package:mendmate_homepage/features/login/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://vwuwlzehbiicztcrvkrk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ3dXdsemVoYmlpY3p0Y3J2a3JrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4NTY5NDgsImV4cCI6MjA0ODQzMjk0OH0.azGsDlu6e4fuAs44BQJw6G2ZBx4xU8qne6e_LhnAIkA',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
