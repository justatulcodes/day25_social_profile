class Timeline {
  String time;
  bool isText;
  List<String> posts;
  String activity;

  Timeline({required this.activity, required this.time, 
  required this.isText, required this.posts});
}

final timelineList = <Timeline>[
  Timeline(
    activity: "",
    isText: false,
    time: "1 hour ago",
    posts: [
      "assets/images/post.jpg",
      "assets/images/post2.jpg",
      "assets/images/post3.jpg"
    ],
  ),
  Timeline(
    activity: "Started following Alex and Elima, Francis and 4 others",
    isText: true,
    posts: [],
    time: "8 hour ago",
  ),
  Timeline(
    activity: "Visited the beach today!",
    isText: false,
    time: "10 hours ago",
    posts: [
      "assets/images/post4.jpg",
      "assets/images/post5.jpg",
      "assets/images/post6.jpg",
    ],
  ),
  Timeline(
    activity: "Enjoyed a delicious meal",
    isText: false,
    time: "1 day ago",
    posts: [
      "assets/images/post2.jpg",
      "assets/images/post.jpg",
    ],
  ),
  Timeline(
    activity: "Went live with Alex and Urfi",
    isText: true,
    posts: [],
    time: "1 day ago",
  ),
  Timeline(
    activity: "",
    isText: false,
    time: "2 days ago",
    posts: [
      "assets/images/post6.jpg",
      "assets/images/post4.jpg",
      "assets/images/post3.jpg",
    ],
  ),
  Timeline(
    activity: "Celebrating a special occasion!",
    isText: false,
    time: "3 days ago",
    posts: [
      "assets/images/post5.jpg",
      "assets/images/post.jpg",
    ],
  ),
  Timeline(
    activity: "Changed profile name from 'Elsa' to 'Elisa'",
    isText: true,
    posts: [],
    time: "4 days ago",
  ),
  Timeline(
    activity: "",
    isText: false,
    time: "5 days ago",
    posts: [
      "assets/images/post3.jpg",
      "assets/images/post2.jpg",
      "assets/images/post.jpg",
    ],
  ),
  Timeline(
    activity: "Watching the sunset",
    isText: false,
    time: "6 days ago",
    posts: [
      "assets/images/post6.jpg",
      "assets/images/post5.jpg",
    ],
  ),
];
