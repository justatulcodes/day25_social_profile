import 'package:day25_social_profile/pages/post_page.dart';
import 'package:flutter/material.dart';

class SinglePostView extends StatelessWidget {
  const SinglePostView({super.key, required this.image});

  final String image;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PostPage(image: image)));
      },
      child: Card(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
          elevation: 4,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: SizedBox(
              width: 70,
              height: 70,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover))),
              ))),
    );
  }
}
