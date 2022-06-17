import 'dart:convert';
import 'package:vistox/Modal/homemodal.dart';
import 'package:vistox/api/homeapi.dart';

class HomeRepo {
  HomeApi homeApi = HomeApi();
  Future<SliderModal> fetchHomeSlider(id) async {
    final response = await homeApi.fetchHomeSlider(id);
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return SliderModal(jsonResponse);
  }

  Future<ClosetoYouModal> fetchClosetoyou(id) async {
    final response = await homeApi.fetchClosetoyou(id);
    var jsonResponse = jsonDecode(response.body) as Map;
    return ClosetoYouModal(jsonResponse);
  }

  Future<ClosetoYouModal> fetchSection2(id) async {
    final response = await homeApi.fetchSection2(id);
    var jsonResponse = jsonDecode(response.body) as Map;
    return ClosetoYouModal(jsonResponse);
  }

  Future<ClosetoYouModal> fetchSection3(id) async {
    final response = await homeApi.fetchSection3(id);
    var jsonResponse = jsonDecode(response.body) as Map;
    return ClosetoYouModal(jsonResponse);
  }

  Future<ClosetoYouModal> fetchSection4(id) async {
    final response = await homeApi.fetchSection4(id);
    var jsonResponse = jsonDecode(response.body) as Map;
    return ClosetoYouModal(jsonResponse);
  }

  Future<ClosetoYouModal> fetchSupersubcat(id) async {
    final response = await homeApi.fetchSupersubcat(id);
    var jsonResponse = jsonDecode(response.body) as Map;
    return ClosetoYouModal(jsonResponse);
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
