import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/explore.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
          )),
      body: ExploreGrid(),
      );
  }
}
