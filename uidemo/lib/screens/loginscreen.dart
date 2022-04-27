import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidemo/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(110, 100, 0, 0),
          child: const Text(
            "Welcome Back !",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(80, 150, 0, 0),
          child: const Text(
            "Please sign in to your account",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 250, 20, 0),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.grey,
                filled: true,
                labelText: "Enter email",
                labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 330, 20, 0),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.grey,
                filled: true,
                labelText: "Password",
                labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(200, 420, 0, 0),
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 510, 20, 0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.blue,
                filled: true,
                hintText: "sign in",
                hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 590, 20, 0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                prefixIcon: FaIcon(FontAwesomeIcons.google),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.white,
                filled: true,
                hintText: "Sign in with Google",
                hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(70, 680, 0, 0),
          child: const Text(
            "Don't have an Account?",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpScreen()),
            );
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(230, 680, 0, 0),
            child: const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
          ),
        ),
      ]),
    );
  }
}
