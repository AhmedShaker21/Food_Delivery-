class User{
  String? userName;
  String? photoUrl;
  String? title;
  User({this.photoUrl,this.userName,this.title});

}
class Data{
  static final users =<User>[
    User(
        userName: "Andy",
        title: "Web Developer",
        photoUrl: "assets/PhotoMenu1.png"
    ),
    User(
        userName: "Joy",
        title: "Python Developer",
        photoUrl: "assets/PhotoMenu2.png"
    ),
    User(
        userName: "Ahmed",
        title: "flutter Developer",
        photoUrl: "assets/PhotoMenu1.png"
    ),

  ];
}