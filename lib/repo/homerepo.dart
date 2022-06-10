import 'dart:convert';

import 'package:flutter/semantics.dart';

import 'package:vistox/Modal/homemodal.dart';
import 'package:vistox/api/homeapi.dart';

class HomeRepo {
  HomeApi homeApi = HomeApi();
  Future<SliderModal> fetchHomeSlider() async {
    final response = await homeApi.fetchHomeSlider();
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return SliderModal(jsonResponse);
  }

  Future<SupercatModal> fetchHomeCategory() async {
    final response = await homeApi.fetchHomeCategory();
    var jsonResponse = jsonDecode(response.body) as List<dynamic>;
    return SupercatModal(jsonResponse);
  }
}
