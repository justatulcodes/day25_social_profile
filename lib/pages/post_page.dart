import 'package:day25_social_profile/data/values.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            splashRadius: 25,
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 22,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                splashRadius: 25,
                icon: const Icon(
                  Icons.more_horiz_rounded,
                  size: 25,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black54,
                Colors.black12,
                Colors.transparent,
                Colors.transparent
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  IconButton(
                    splashColor: Colors.transparent,
                    splashRadius: 25,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: followBtnSurfaceColor,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    splashColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    splashRadius: 25,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.messenger_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Liked by Alex and 29 others",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Rubik",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        splashRadius: 20,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                        color: Colors.black87,
                        iconSize: 20,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      hintText: "Send message",
                      hintStyle: const TextStyle(
                          fontFamily: "Rubik",
                          color: infoTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                  style: const TextStyle(
                      backgroundColor: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

Future<String> getMostProminentColorFromImage(String imagePath) async {
  final imageProvider = AssetImage(imagePath);
  final paletteGenerator =
      await PaletteGenerator.fromImageProvider(imageProvider);

  Color mostProminentColor = paletteGenerator.dominantColor!.color;

  return '#${mostProminentColor.value.toRadixString(16).substring(2)}';
}
