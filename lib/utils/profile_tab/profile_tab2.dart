import 'package:flutter/material.dart';

class ProfileTab2 extends StatelessWidget {
  const ProfileTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              color: Colors.deepPurple[100],
            ),
          );
        });
  }
}
