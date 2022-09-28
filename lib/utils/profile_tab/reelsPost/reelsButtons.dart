import 'package:flutter/material.dart';

class ReelsButtons extends StatelessWidget {

  final String likeString;
  final String commentString;

  const ReelsButtons({super.key, required this.likeString, required this.commentString});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(1,1),
      child: Padding(
        padding: const EdgeInsets.only(right: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.favorite_border_outlined,size: 35,color: Colors.white,),
            const SizedBox(height: 5,),
            Text(likeString, style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 15,),
            const Icon(Icons.chat_bubble_outline,size: 35,color: Colors.white),
            const SizedBox(height: 5,),
            Text(commentString, style: const TextStyle(color: Colors.white),),
            const SizedBox(height: 15,),
            const Icon(Icons.send_outlined,size: 35,color: Colors.white),
            const SizedBox(height: 15,),
            const Icon(Icons.bookmark_outline,size: 35,color: Colors.white),
            const SizedBox(height: 15,),
            const Icon(Icons.more_horiz,color: Colors.white),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
