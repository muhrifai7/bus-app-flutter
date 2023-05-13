import 'package:flutter/material.dart';
// import 'package:faker/faker.dart';
import 'package:flutter_application_1/pages/login_form.dart';
import 'package:flutter_application_1/pages/signup_form.dart';
import 'package:flutter_application_1/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: const LoginForm(),
      initialRoute: '/login',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/login': (context) => const LoginForm(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signup': (context) => const SignupForm(),
        '/dashboard': (context) => const Dashboard(),
      },
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: 'Roboto',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shadowColor: Colors.grey,
                  elevation: 20,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0))))),
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              alignment: Alignment.centerLeft,
            ),
          )),
    ));
  }
}
