import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:viber_ui/widgets/convopage.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key}) : super(key: key);

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.purple),
          backgroundColor: Colors.white,
        ),
        //  AppBar(
        //     iconTheme: IconThemeData(color: Colors.green),
        //     automaticallyImplyLeading: true,
        //     backgroundColor: Colors.white,
        //     flexibleSpace: SafeArea(
        //       child: Container(
        //         padding: EdgeInsets.only(left: 20.0),
        //         child: Row(
        //           children: [
        //             IconButton(
        //                 onPressed: () {},
        //                 icon: Icon(
        //                   Icons.arrow_back,
        //                   color: Colors.purple,
        //                 )),
        //             SizedBox(
        //               width: 5.0,
        //             ),
        //             Expanded(
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     "Ram",
        //                     style: TextStyle(color: Colors.black, fontSize: 14),
        //                   ),
        //                   SizedBox(height: 6),
        //                   Text(
        //                     "Last Seen on April 8",
        //                     style: TextStyle(color: Colors.grey, fontSize: 8),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     actions: [
        //       IconButton(
        //         onPressed: () {
        //           // Navigator.push(context,
        //           //     MaterialPageRoute(builder: (context) => ImageSelect()));
        //         },
        //         icon: Icon(Icons.call),
        //         color: Colors.purple,
        //       ),
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.videocam),
        //         color: Colors.purple,
        //       ),
        //       IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.more_vert),
        //         color: Colors.purple,
        //       )
        //     ]),

        body: Stack(children: [
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : Colors.blue[200]),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(messages[index].messageContent),
                          Text(
                            times[index].timemessage,
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 122, 119, 119)),
                          )
                        ],
                      )),
                ),
              );
            },
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 15),
                height: 100,
                // width: 100,
                color: Colors.white,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Type a Message...",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12),
                          border: InputBorder.none),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.catching_pokemon_outlined,
                              color: Colors.grey,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.image_outlined,
                              color: Colors.grey,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.grey,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.gif_box_outlined,
                              color: Colors.grey,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.alarm_add_outlined,
                              color: Colors.grey,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.grey,
                              size: 35,
                            )),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 40,
              right: 10,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.purple),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ))
        ]));
  }
}
