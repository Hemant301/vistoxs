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

  Future<dynamic> fetchClosetoyou(id) async {
    try {
      final response = await client.post(
          Uri.parse("${baseUrl}super_app_home_section1.php"),
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
