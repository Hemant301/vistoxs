import 'dart:convert';
import 'package:vistox/Modal/homemodal.dart';
import 'package:vistox/api/homeapi.dart';

class HomeRepo {
  HomeApi homeApi = HomeApi();
  Future<SliderModal> fetchHomeSlider() async {
    final response = await homeApi.fetchHomeSlider();
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return SliderModal(jsonResponse);
  }

  Future<SuperAppModal> fetchHomeCategory() async {
    final response = await homeApi.fetchHomeCategory();
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return SuperAppModal(jsonResponse);
  }

  Future<HomeNearbyModal> fetchHomeNearby() async {
    final response = await homeApi.fetchHomeNearby();
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return HomeNearbyModal(jsonResponse);
  }

  Future<SupercatModal> fetchSupercat(id) async {
    final response = await homeApi.fetchSupercat(id);
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return SupercatModal(jsonResponse);
  }
}
