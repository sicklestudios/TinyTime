class Items {
  final String img;
  final String title;
  final String subTitle;
  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: "assets/student.png",
    title: "Discover the best learning\n and fun experience",
    subTitle: "Choose your\nchoice now",
  ),
  Items(
    img: "assets/back-to-school.png",
    title: "Explore more ",
    subTitle:
        "There will be many people who\n want hear your stories and\n experiences",
  ),
  Items(
    img: "assets/apps.png",
    title: "Share your fun learning\nexperience",
    subTitle: "Rate the fun you gained using\n our app",
  ),
];
