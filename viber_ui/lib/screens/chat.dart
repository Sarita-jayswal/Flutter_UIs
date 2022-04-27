import 'package:flutter/material.dart';

import 'individualpage.dart';
import '../widgets/conversation.dart';
import '../widgets/image.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IndividualPage()));
                      },
                      child: conversation(
                        imageUrls[0],
                        "Ram",
                        "Ok will be there.",
                        "Fri",
                        false,
                      ),
                    ),
                    conversation(
                      imageUrls[4],
                      "Sita",
                      "I am going.",
                      "Apr 01",
                      true,
                    ),
                    conversation(
                      imageUrls[1],
                      "Shyam",
                      "I am going.",
                      "Jan 10",
                      false,
                    ),
                    conversation(
                      imageUrls[1],
                      "Hari",
                      "Ok will be there.",
                      "Jan 02",
                      true,
                    ),
                    conversation(
                      imageUrls[1],
                      "John",
                      "Deadline Tomorrow",
                      "Dec 30",
                      true,
                    ),
                    conversation(
                      imageUrls[0],
                      "Sujata",
                      "Lets visit a park",
                      "Dec 27",
                      true,
                    ),
                    conversation(
                      imageUrls[2],
                      "Anu",
                      "Lets go",
                      "Jan 13",
                      false,
                    ),
                    conversation(
                      imageUrls[1],
                      "Dilip",
                      "Dont Go",
                      "Dec 09",
                      false,
                    ),
                    conversation(
                      imageUrls[3],
                      "Muna",
                      "Ok will be there.",
                      "Dec 01",
                      true,
                    ),
                  ]),
            ),
          ),
        ],
      ),
      Positioned(
        bottom: 20,
        right: 20,
        child: Container(
          height: 60,
          width: 60,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.purple),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
        ),
      )
    ]);
  }
}
