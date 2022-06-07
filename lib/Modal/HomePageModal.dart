class AppCatModal {
  String? title;
  String? image;
  AppCatModal({
    required this.image,
    required this.title,
  });
}

List<AppCatModal> appCatData = [
  AppCatModal(image: "assets/food.png", title: "Food"),
  AppCatModal(image: "assets/makup.png", title: "Beauty"),
  AppCatModal(image: "assets/gym.png", title: "Fitness"),
  AppCatModal(image: "assets/market.png", title: "Super Marts"),
  AppCatModal(image: "assets/hotal.png", title: "Hotels"),
  AppCatModal(image: "assets/events.png", title: "Events"),
];
