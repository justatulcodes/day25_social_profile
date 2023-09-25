import 'package:day25_social_profile/data/timeline_data.dart';

class Profile {
  String profileImage;
  String name;
  int followers;
  int following;
  int posts;
  List<Timeline> timeline;

  Profile(
      {required this.followers,
      required this.following,
      required this.profileImage,
      required this.name,
      required this.posts,
      required this.timeline});
}

final profileData = Profile(
    profileImage: "assets/images/profile.jpg",
    followers: 23,
    following: 87,
    name: "Elisa Ingram",
    posts: 14,
    timeline: timelineList);
