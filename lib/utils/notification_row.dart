import 'package:flutter/material.dart';
class NotificationRow extends StatelessWidget {

  final String text1;
  final String text2;

  const NotificationRow({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12,top: 8),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 10, right: 25, left: 8),
                child: RichText(text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: text1, style: const TextStyle(fontWeight: FontWeight.w500)),
                      TextSpan(text: text2,)
                    ]
                )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
