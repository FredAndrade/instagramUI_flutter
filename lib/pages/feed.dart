import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';
import 'package:instagram_ui/utils/user_post.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FeedPage extends StatelessWidget {

  final List people = ['nome1', 'Fred', 'Andrade', '123', '456'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Instagram'),
            Icon(MdiIcons.chevronDown),
            Spacer(flex: 2,),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.maps_ugc_outlined),
                ),
              ],
            )
          ],
        ),
      ),
      body:
        Column(
          children: [
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context,index) {
                return BubbleStories(text: people[index]);
              },),
            ),
            Expanded(child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index],);
                }))
          ],
      )
    );
  }
}
