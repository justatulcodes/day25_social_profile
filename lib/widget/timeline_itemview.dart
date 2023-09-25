import 'package:day25_social_profile/data/timeline_data.dart';
import 'package:day25_social_profile/pages/profile_page.dart';
import 'package:day25_social_profile/widget/single_post_view.dart';
import 'package:flutter/material.dart';

class TimelineItemview extends StatelessWidget {
  const TimelineItemview(
      {Key? key, required this.timeline, required this.isLast})
      : super(key: key);

  final Timeline timeline;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    var activityIconColor = Colors.black12;
    if (timeline == timelineList[0]) {
      activityIconColor = Colors.black87;
    }
    return Container(
        margin: const EdgeInsets.all(10),
        width: double.maxFinite,
        height: 110,
        child: Scaffold(
            body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: activityIconColor,
                    size: 12,
                  ),
                  const SizedBox(width: 15),
                  Expanded(child: profileStatHeaders(timeline.time))
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const VerticalDivider(
                      width: 12,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          activityWidget(timeline)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

Widget activityWidget(Timeline timeline) {
  if (timeline.isText) {
    return Text(
      timeline.activity,
      style: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  } else {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < timeline.posts.length; i++)
              SinglePostView(image: timeline.posts[i])
          ],
        ));
  }
}
