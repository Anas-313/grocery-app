import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/constants/my_button.dart';
import 'package:grocery_app/constants/my_textfield.dart';
import 'package:grocery_app/constants/square_tile.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  RegisterPage({required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try creating the user
    try {
      //check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        //show error message, password don't match
        showErrorMessage("password don't match");
      }

      //pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      showErrorMessage(e.code);
    }
  }

  // Wrong email popup
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                // Let's create an account for you
                const Text(
                  'Let\'s create an account for you!',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),

                // username textfield
                MyTextField(
                  hintText: 'User Name',
                  obscure: false,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 8,
                ),

                // password text-field
                MyTextField(
                  hintText: 'Password',
                  obscure: true,
                  controller: passwordController,
                ),

                const SizedBox(
                  height: 8,
                ),

                // Confirm password text-field
                MyTextField(
                  hintText: 'Confirm Password',
                  obscure: true,
                  controller: confirmPasswordController,
                ),
                const SizedBox(
                  height: 10,
                ),

                const SizedBox(
                  height: 10,
                ),

                // sign in button
                MyButton(
                  text: 'Register',
                  onPress: signUserUp,
                ),
                const SizedBox(
                  height: 50,
                ),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or Continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(imagePath: 'assets/images/google.png'),

                    const SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'assets/images/apple.png'),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // not a member? register now
                    const Text(
                      'Already have an ?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
