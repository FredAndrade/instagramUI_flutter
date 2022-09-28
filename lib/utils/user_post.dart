import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({super.key, required this.name});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(thickness: 0.5,),
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 8,left: 8,right: 5),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle
                ),
              ),
              const SizedBox(width: 10,),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
              const Spacer(flex: 2,),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 5,left: 8, bottom: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border_outlined,size: 25,),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble_outline, size: 25,),
                  ),
                  Icon(Icons.send_outlined,size: 25,)
                ],
              ),
              const Icon(Icons.bookmark_outline,size: 30,),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: const [
              Text('Liked by '),
              Text('Fred ', style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text('others', style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8,left: 8,right: 5, bottom: 10),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: 'Fred ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Uma mensagem bem grande só pra testar se o texto tá realmente descendo pra próxima linha.')
              ]
            ),
          )
        ),
        Padding(padding: const EdgeInsets.only(left: 8, bottom: 10),
        child: Text('View all 23 comments',style: TextStyle(color: Colors.grey[600]),),
        )
      ],
    );
  }
}
