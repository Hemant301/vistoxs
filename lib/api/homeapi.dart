import 'package:http/http.dart' as http;
import 'package:vistox/utils/const.dart';

class HomeApi {
  var client = http.Client();
  Future<dynamic> fetchHomeSlider() async {
    try {
      final response = await client.get(
        Uri.parse("${baseUrl}slider-vis.php"),
      );
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

  Future<dynamic> fetchHomeCategory() async {
    try {
      final response = await client.get(
        Uri.parse("${baseUrl}get-super-app-vis.php"),
      );
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

  Future<dynamic> fetchHomeNearby() async {
    try {
      final response = await client
          .post(Uri.parse("${baseUrl}get-super-app-vis.php"), body: {});
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
