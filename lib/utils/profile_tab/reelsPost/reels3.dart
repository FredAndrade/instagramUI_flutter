import 'package:flutter/material.dart';

import 'postTemplate.dart';

class ReelsPost3 extends StatelessWidget {
  const ReelsPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'another.user_again',
        videoDescription: 'last Instagram reels screen in\nflutter ',
        numberOfLikes: '1.528',
        numberOfComments: '114',
        userPost: Container(
          color: Colors.red[300],
        ));
  }
}
