class AppCatModal {
  String? title;
  String? image;
  AppCatModal({
    required this.image,
    required this.title,
  });
}

List<AppCatModal> appCatData = [
  AppCatModal(
      image: "https://cdn-icons-png.flaticon.com/512/1037/1037762.png",
      title: "Food"),
  AppCatModal(
      image: "https://cdn-icons-png.flaticon.com/512/3163/3163203.png",
      title: "Beauty"),
  AppCatModal(
      image: "https://cdn-icons-png.flaticon.com/512/1198/1198314.png",
      title: "Fitness"),
  AppCatModal(
      image: "https://cdn-icons-png.flaticon.com/512/3737/3737372.png",
      title: "Super Marts"),
  AppCatModal(
      image: "https://cdn-icons-png.flaticon.com/512/897/897061.png",
      title: "Hotels"),
  AppCatModal(
      image: "https://cdn-icons-png.flaticon.com/512/1636/1636028.png",
      title: "Events"),
];
