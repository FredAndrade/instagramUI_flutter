import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/bubble_stories.dart';
import 'package:instagram_ui/utils/profile_tab/profile_tab1.dart';
import 'package:instagram_ui/utils/profile_tab/profile_tab2.dart';
import 'package:instagram_ui/utils/profile_tab/profile_tab3.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text('237', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                            Text('Posts')
                          ],
                        ),
                        Column(
                          children: const [
                            Text('2370', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                            Text('Followers')
                          ],
                        ),
                        Column(
                          children: const [
                            Text('52', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                            Text('Following')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, right: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Fred Andrade',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Text('Desenvolvedor Mobile Flutter | iOS'),
                  ),
                  Text('linkedin.com.br/freedandrade/', style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BubbleStories(text: 'Story1'),
                BubbleStories(text: 'Story2'),
                BubbleStories(text: 'Story3'),
                BubbleStories(text: 'Story4'),
              ],
            ),),
             const TabBar(
               tabs:[
                 Tab(icon: Icon(Icons.grid_on_outlined),),
                 Tab(icon: Icon(Icons.slideshow_outlined),),
                 Tab(icon: Icon(Icons.photo_camera_front_outlined),),
               ]
            ),
            const Expanded(child: TabBarView(children: [
              ProfileTab1(),
              ProfileTab2(),
              ProfileTab3(),
            ]))
          ],
        ),
      ),
    );
  }
}
