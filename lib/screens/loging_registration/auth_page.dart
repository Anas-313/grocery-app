import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';
import 'package:grocery_app/screens/loging_registration/home_page.dart';
import 'package:grocery_app/screens/loging_registration/login_page.dart';
import 'package:grocery_app/screens/loging_registration/login_or_register.dart';


class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is logged in
          if (snapshot.hasData) {
            return DashboardScreen();
            // return HomePage();
          }
          // User is Not logged in
          else {
            return LoginOrRegister();
          }
        },
      ),
    );
  }
}
