import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/profile_tab/reelsPost/reelsButtons.dart';

class PostTemplate extends StatelessWidget {
  final String username,
      videoDescription,
      numberOfLikes,
      numberOfComments;
  final userPost;

  const PostTemplate(
      {super.key,
      required this.username,
      required this.videoDescription,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@' + username,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: videoDescription),
                    const TextSpan(
                        text: '#fyp #flutter',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          ReelsButtons(
            likeString: numberOfLikes,
            commentString: numberOfComments,
          ),
        ],
      ),
    );
    ;
  }
}
