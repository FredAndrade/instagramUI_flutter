import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/profile_tab/reelsPost/postTemplate.dart';

class ReelsPost1 extends StatelessWidget {
  const ReelsPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'andrade.freed',
        videoDescription: 'instagram reels first screen ',
        numberOfLikes: '1M',
        numberOfComments: '221K',
        userPost: Container(
      color: Colors.grey[700],
    ));
  }
}
