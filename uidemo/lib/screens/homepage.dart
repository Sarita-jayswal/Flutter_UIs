import 'package:flutter/material.dart';

import 'loginscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/download.jfif"), fit: BoxFit.fill),
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 170, 0, 0),
                child: Center(
                    child: Text(
                  "abda.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ))),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
                child: Center(
                    child: Text(
                  "Watch your favorite movies or series on",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ))),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Center(
                    child: Text(
                  "only one platform you can watch it",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ))),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 350, 0, 0),
                child: Center(
                    child: Text(
                  "anytime anywhere.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ))),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    height: 60,
                    minWidth: 400,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ));
  }
}
