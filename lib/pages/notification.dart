import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/notification_row.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 24),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Divider(
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'This Month',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          NotificationRow(
              text1: 'GitHub ',
              text2:
                  'is now offering\nsubscriptions. Subscribe no access\nexclusive content and subscriber-only\ngroup chats.'),
          Divider(
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Earlier',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          NotificationRow(
              text1: 'LinkedIn ',
              text2:
                  'and 27 others started \nfollowing you.'),
          SizedBox(height: 10,),
          NotificationRow(text1: 'andrade.freed ', text2: 'is followed by GitHub\nand 27 others.')
        ],
      ),
    );
  }
}
