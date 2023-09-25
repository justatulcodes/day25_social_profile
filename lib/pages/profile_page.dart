import 'package:day25_social_profile/data/profile_data.dart';
import 'package:day25_social_profile/data/values.dart';
import 'package:day25_social_profile/widget/timeline_itemview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              splashRadius: 25,
              icon: const Icon(
                Icons.more_horiz_rounded,
                color: focusTextColor,
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        alignment: Alignment.topCenter,
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.only(top: 80),
              elevation: 30,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: SizedBox(
                  width: 140,
                  height: 140,
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(profileData.profileImage),
                                fit: BoxFit.cover)),
                      ))),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Elisa \nIngram",
                style: TextStyle(
                    color: focusTextColor,
                    height: 0.9,
                    fontSize: 45,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileStatText(profileData.followers.toString()),
                profileStatText(profileData.posts.toString()),
                profileStatText(profileData.following.toString())
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileStatHeaders("followers"),
                profileStatHeaders("posts"),
                profileStatHeaders("following")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: followBtnSurfaceColor),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Ink(
                    decoration: const ShapeDecoration(
                        color: messageBtnSurfaceColor,
                        shape: BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(3)))),
                    child: IconButton(
                        splashRadius: 1,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.messenger_outline_sharp,
                          color: followBtnSurfaceColor,
                          size: 18,
                        )),
                  )
                ],
              ),
            ),
            Expanded(
                child: ScrollConfiguration(
              behavior:
                  const MaterialScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: profileData.timeline.length,
                itemBuilder: ((context, index) {
                  return TimelineItemview(
                      timeline: profileData.timeline[index],
                      isLast: index == profileData.timeline.length-1,);
                }),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

Widget profileStatText(String data) {
  return Text(
    data.toString(),
    style: const TextStyle(
      color: focusTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: "Rubik",
    ),
  );
}

Widget profileStatHeaders(String name) {
  return Text(
    name,
    style: const TextStyle(
      color: infoTextColor,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: "Rubik",
    ),
  );
}
