class SliderModal {
  List<SliderimgModal> data = [];
  SliderModal(js) {
    for (var i = 0; i < js.length; i++) {
      data.add(SliderimgModal(js[i]));
    }
  }
}

class SliderimgModal {
  String? img;

  SliderimgModal(js) {
    img = js['img'] ?? "";
  }
}

class SupercatModal {
  List<SupercatdetailModal> data = [];
  SupercatModal(js) {
    for (var i = 0; i < js.length; i++) {
      data.add(SupercatdetailModal(js[i]));
    }
  }
}

class SupercatdetailModal {
  String? super_app_id;
  String? name;
  String? image;

  SupercatdetailModal(js) {
    super_app_id = js['super_app_id'] ?? "";
    name = js['name'] ?? "";
    image = js['image'] ?? "";
  }
}
