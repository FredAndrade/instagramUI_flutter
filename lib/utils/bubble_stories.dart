import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {

  final String text;

  const BubbleStories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),),
          const SizedBox(height: 5,),
          Align(
            alignment: Alignment.center,
            child: Text(text, style: const TextStyle(fontSize: 13,)),
          )
        ],
      )
    );
  }
}
