import 'package:flutter/material.dart';
import 'package:todoui/screens/timeline.dart';

class MonthlyReviewScreen extends StatefulWidget {
  const MonthlyReviewScreen({Key? key}) : super(key: key);

  @override
  State<MonthlyReviewScreen> createState() => _MonthlyReviewScreenState();
}

class _MonthlyReviewScreenState extends State<MonthlyReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 27,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("image/avatar.jfif"),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Hi Ghulam",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "6 Tasks are pending",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.deepPurpleAccent.withOpacity(0.6),
                elevation: 10,
                child: SizedBox(
                  width: 300,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text("Mobile App Design",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          "Mike and Anita",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 10),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 450,
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("image/avatar.jfif"),
                                  radius: 13,
                                ),
                              ),
                              Positioned(
                                left: 20,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 15,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("image/avatar.jfif"),
                                    radius: 13,
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //  width: 160,
                              // ),
                              Positioned(
                                left: 220,
                                child: Text(
                                  "Now",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 10),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Monthly Review",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 68, 255, 255),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.deepPurpleAccent.withOpacity(0.6),
                    elevation: 10,
                    child: SizedBox(
                        width: 140,
                        height: 130,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 40),
                                  const Text(
                                    "22",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Done",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.deepPurpleAccent.withOpacity(0.6),
                    elevation: 10,
                    child: SizedBox(
                        width: 135,
                        height: 100,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 40),
                                  const Text(
                                    "7",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "In Progress",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ))),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.deepPurpleAccent.withOpacity(0.6),
                    elevation: 10,
                    child: SizedBox(
                        width: 140,
                        height: 80,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Ongoing",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.deepPurpleAccent.withOpacity(0.6),
                    elevation: 10,
                    child: SizedBox(
                        width: 135,
                        height: 80,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    "7",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Waiting for Review",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 8),
                                  )
                                ],
                              ),
                            ))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.description_outlined,
                    color: Colors.blue,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimelineScreen(),
                          ),
                        );
                      },
                      child: Icon(Icons.person_outlined, color: Colors.white)),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
