class AppCatModal {
  String? title;
  String? image;
  String? id;
  AppCatModal({
    required this.image,
    required this.title,
    required this.id,
  });
}

List<AppCatModal> appCatData = [
  AppCatModal(image: "assets/food.png", title: "Food", id: "1"),
  AppCatModal(image: "assets/makup.png", title: "Beauty", id: "2"),
  AppCatModal(image: "assets/gym.png", title: "Fitness", id: "3"),
  AppCatModal(image: "assets/market.png", title: "Super Marts", id: "4"),
  AppCatModal(image: "assets/hotal.png", title: "Hotels", id: "5"),
  AppCatModal(image: "assets/events.png", title: "Events", id: "6"),
];
