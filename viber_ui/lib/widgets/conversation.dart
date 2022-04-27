import 'package:flutter/material.dart';

Widget conversation(
  String url,
  String name,
  String message,
  String time,
  bool messageSeen,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),

              child: Image.network(
                url,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),

              // backgroundImage: NetworkImage(url),
              // radius: 25.0,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      if (messageSeen)
                        const Icon(
                          Icons.done_all,
                          size: 16.0,
                          color: Colors.grey,
                        ),
                      if (!messageSeen)
                        const Icon(
                          Icons.check,
                          color: Colors.grey,
                          size: 16.0,
                        ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    message,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          color: Colors.black,
        ),
      ],
    ),
  );
}
