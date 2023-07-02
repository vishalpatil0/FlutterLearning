import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima/services/location.dart';

class NetworkHelper {
  final url;

  NetworkHelper(this.url) {}

  Future getData() async {
    final l = Location();

    await l.getLocation();

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
