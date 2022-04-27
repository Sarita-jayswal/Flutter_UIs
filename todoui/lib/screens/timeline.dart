import 'dart:ui';

import 'package:flutter/material.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  List<int> time = [9, 10, 11, 12, 1, 12];
  List<String> dates = ['12', '13', '14', '15', '16', '17', '18'];
  List<String> days = [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 30,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 27,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("image/avatar.jfif"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.black, size: 20),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Mar",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                  SizedBox(width: 70),
                  Text(
                    "April",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 70),
                  Text(
                    "May",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward, color: Colors.black, size: 20),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "${dates[index]} ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${days[index]} ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  itemCount: 7,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ongoing",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                        itemCount: time.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${time[index]} ${time[index] > 10 ? "PM" : "AM"}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.deepPurpleAccent.withOpacity(0.6),
                            elevation: 10,
                            child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    const Text("Mobile App Design",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10)),
                                    Text(
                                      "Mike and Anita",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 8),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("image/avatar.jfif"),
                                            radius: 10,
                                          ),
                                        ),
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("image/avatar.jfif"),
                                            radius: 10,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 80,
                                        ),
                                        Text(
                                          "9AM-10AM",
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontSize: 8),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          // height: 20,
                          //),
                          const Divider(
                            thickness: 2,
                            //endIndent: 0,
                            color: Colors.red,
                          ),
                          //SizedBox(
                          // height: 20,
                          //),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.deepPurpleAccent.withOpacity(0.6),
                            elevation: 10,
                            child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    const Text("Mobile App Design",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10)),
                                    Text(
                                      "Mike and Anita",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 8),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("image/avatar.jfif"),
                                            radius: 10,
                                          ),
                                        ),
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("image/avatar.jfif"),
                                            radius: 10,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 80,
                                        ),
                                        Text(
                                          "9AM-10AM",
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontSize: 8),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.deepPurpleAccent.withOpacity(0.6),
                            elevation: 10,
                            child: SizedBox(
                              width: 200,
                              height: 100,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    const Text("Mobile App Design",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10)),
                                    Text(
                                      "Mike and Anita",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 8),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("image/avatar.jfif"),
                                            radius: 10,
                                          ),
                                        ),
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage("image/avatar.jfif"),
                                            radius: 10,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 80,
                                        ),
                                        Text(
                                          "9AM-10AM",
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontSize: 8),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
