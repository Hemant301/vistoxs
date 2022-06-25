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
  String? storeid;
  String? storeimage;
  String? cityname;
  CloseStoreListModal(js) {
    storename = js['store_name'] ?? "";
    storeid = js['store_id'] ?? "";
    storeimage = js['store_image'] ?? "";
    cityname = js['city_name'] ?? "";
  }
}

class OverViewModal {
  List<OverviewdetailModal> overview = [];
  OverViewModal(js) {
    for (var i = 0; i < js.length; i++) {
      overview.add(OverviewdetailModal(js[i]));
    }
  }
}

class OverviewdetailModal {
  String? id;
  String? title;
  String? desc;
  OverviewdetailModal(js) {
    id = js['id'] ?? "";
    title = js['title'] ?? "";
    desc = js['description'] ?? "";
  }
}

class FeatureModal {
  List<FeaturedetailModal> overview = [];
  FeatureModal(js) {
    for (var i = 0; i < js.length; i++) {
      overview.add(FeaturedetailModal(js[i]));
    }
  }
}

class FeaturedetailModal {
  String? id;
  String? title;
  // String? desc;
  FeaturedetailModal(js) {
    id = js['id'] ?? "";
    title = js['title'] ?? "";
    // desc = js['description'] ?? "";
  }
}

class StoreModal {
  String? id;
  String? store_name;
  String? store_description;
  String? short_description;
  List<Storeimage> store_image = [];
  String? store_address;
  int? is_open;
  String? close_time;
  String? avg_price;
  String? key_feature;
  StoreModal(js) {
    id = js['id'] ?? "";
    store_name = js['store_name'] ?? "";
    store_description = js['store_description'] ?? "";
    short_description = js['short_description'] ?? "";
    // store_image = js['store_image'] ?? "";
    store_address = js['store_address'] ?? "";
    is_open = js['is_open'] ?? "";
    close_time = js['close_time'] ?? "";
    avg_price = js['avg_price'] ?? "";
    key_feature = js['key_feature'] ?? "";
    for (var i = 0; i < js['store_image'].length; i++) {
      store_image.add(Storeimage(js['store_image'][i]));
    }
  }
}

class Storeimage {
  String? img;
  Storeimage(js) {
    img = js['img'] ?? "";
  }
}
