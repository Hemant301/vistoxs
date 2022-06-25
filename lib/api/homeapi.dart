import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vistox/utils/const.dart';

class HomeApi {
  var client = http.Client();
  Future<dynamic> fetchHomeSlider(id) async {
    try {
      final response = await client.post(Uri.parse("${baseUrl}slider-vis.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchmenutab(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-subtab-vis.php"),
          body: {'super_tab_id': id});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> getMenuid({
    String id = "",
  }) async {
    var client = http.Client();
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-subtab-vis.php"),
          body: {'super_tab_id': id});
      if (response.statusCode == 200) {
        // print(response.body);
        return jsonDecode(response.body) as List;
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw "Somethiing went wrong";
      }
    } catch (e) {
      //  print(e);
      throw "Somethiing went wrong";
    } finally {
      client.close();
    }
  }

  Future<dynamic> fetchmenuImage(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-subtab-option-vis.php"),
          body: {'tab_id': id});
      if (response.statusCode == 200) {
        print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchClosetoyou(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}super_app_home_section1.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchOverview(id, storeid) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-overview-section-content-vis.php"),
          body: {'super_app_id': id, 'store_id': storeid});
      if (response.statusCode == 200) {
        //  print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchFeature(id, storeid) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-overview-feature-facility-vis.php"),
          body: {'super_app_id': id, 'store_id': storeid});
      if (response.statusCode == 200) {
        //  print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchStoredata(id, storeid) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-store-detail-vis.php"),
          body: {'super_app_id': id, 'store_id': storeid});
      if (response.statusCode == 200) {
        print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchSection2(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}super_app_home_section2.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchSection3(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}super_app_home_section3.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchSection4(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}super_app_home_section4.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchSupersubcat(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}super_app_home_sub_category_list.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        print(response.body);
        return response;
      } else {
        // print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchHomeCategory() async {
    try {
      final response = await client.get(
        Uri.parse("${baseUrl}get-super-app-vis.php"),
      );
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchHomeNearby() async {
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}get-super-app-vis.php"), body: {});
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }

  Future<dynamic> fetchSupercat(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}get-super-cat-vis.php"),
          body: {'super_app_id': id});
      if (response.statusCode == 200) {
        print(response.body);
        return response;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      // print(e);
    } finally {}
  }
}

final homeapi = HomeApi();
