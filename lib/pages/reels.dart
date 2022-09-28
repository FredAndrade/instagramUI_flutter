import 'package:flutter/material.dart';

import '../utils/profile_tab/reelsPost/reels1.dart';
import '../utils/profile_tab/reelsPost/reels2.dart';
import '../utils/profile_tab/reelsPost/reels3.dart';


class ReelsPage extends StatelessWidget {

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          ReelsPost1(),
          ReelsPost2(),
          ReelsPost3(),
        ],
      )
    );
  }
}
