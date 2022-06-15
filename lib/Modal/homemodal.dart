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

class SuperAppModal {
  List<SupercatdetailModal> data = [];
  SuperAppModal(js) {
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

class HomeNearbyModal {
  List<HomeNearbydetailModal> data = [];
  HomeNearbyModal(js) {
    for (var i = 0; i < js.length; i++) {
      data.add(HomeNearbydetailModal(js[i]));
    }
  }
}

class HomeNearbydetailModal {
  String? id;
  String? name;
  String? image;
  String? discount;
  String? rating;
  String? location;

  HomeNearbydetailModal(js) {
    id = js['id'] ?? "";
    name = js['name'] ?? "";
    image = js['image'] ?? "";
    discount = js['discount'] ?? "";
    rating = js['rating'] ?? "";
    location = js['location'] ?? "";
  }
}

class SupercatModal {
  List<SupercategorydetailModal> data = [];
  SupercatModal(js) {
    for (var i = 0; i < js.length; i++) {
      data.add(SupercategorydetailModal(js[i]));
    }
  }
}

class SupercategorydetailModal {
  String? id;
  String? name;
  String? image;

  SupercategorydetailModal(js) {
    id = js['super_id'] ?? "";
    name = js['name'] ?? "";
    image = js['image'] ?? "";
  }
}

class ClosetoYouModal {
  String? title;
  List<CloseStoreListModal> store = [];
  ClosetoYouModal(js) {
    title = js['title'] ?? "";
    for (var i = 0; i < js['store'].length; i++) {
      store.add(CloseStoreListModal(js['store'][i]));
    }
  }
}

class CloseStoreListModal {
  String? storename;
  String? storeimage;
  String? cityname;
  CloseStoreListModal(js) {
    storename = js['store_name'] ?? "";
    storeimage = js['store_image'] ?? "";
    cityname = js['city_name'] ?? "";
  }
}
