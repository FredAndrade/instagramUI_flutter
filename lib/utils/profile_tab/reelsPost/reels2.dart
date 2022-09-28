import 'package:flutter/material.dart';

import 'postTemplate.dart';

class ReelsPost2 extends StatelessWidget {
  const ReelsPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'anotherUser',
        videoDescription: 'flutter instagram screen ',
        numberOfLikes: '237K',
        numberOfComments: '26K',
        userPost: Container(
          color: Colors.blue[700],
        ));
  }
}
