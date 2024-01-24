



class Events {
  final int? postId;
  final String postTitle;
  final String arabicdescription;
  final String englishdescription;
  final String postImage;
  final DateTime timestamp;
  //int likes;
  //int views;

  Events({
    this.postId,
    required this.postTitle,
    required this.arabicdescription,
    required this.englishdescription,
    required this.postImage,
    required this.timestamp,
    //required this.likes,
    //required this.views,
  });

  // this is json value must be same as your column name in database
  factory Events.fromJson(Map<String, dynamic> json) => Events(
    postId: json["usrID"],
    postTitle: json["postTitle"],
    arabicdescription: json["arabicDescription"],
    englishdescription: json["englishDescription"],
    postImage: json["postImage"],
    timestamp: json["postTime"],
    //likes: json["likes"],
    //views: json["views"],
  );

  Map<String, dynamic> toJson() => {
    "postId": postId,
    "postTitle": postTitle,
    "ArabicDescription": arabicdescription,
    "englishdescription": englishdescription,
    "image": postImage,
    "timestamp": timestamp.toUtc().toIso8601String(),
    //"likes": likes,
    //"views": views,
  };
}
