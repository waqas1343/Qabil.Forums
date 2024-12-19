import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qabilforums/Views/login_signup_screens/login_screens.dart';
import 'package:qabilforums/controllers/multi_provider_lists.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: appProviders,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreens(),
      ),
    );
  }
}
