

import 'package:flutter/material.dart';
import 'package:todoui/screens/monthlyreviewscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/homepage.jfif"), fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 370, 70, 0),
          child: Column(
            children: const [
              Text(
                "Manage your daily tasks",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
                maxLines: 2,
                //overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Team and Project mangement with solution providing App",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                textAlign: TextAlign.justify,
                maxLines: 2,
                //overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 600, 0, 0),
          child: Container(
            height: 80,
            width: 200,
            child: Stack(
              children: [
                Container(
                  width: 80,
                  // height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      shape: BoxShape.circle),
                ),
                Center(
                  child: Positioned(
                    left: 30,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MonthlyReviewScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
