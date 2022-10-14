import 'dart:convert';
import 'package:json_listview/Constants.dart';
import '../model/Data.dart';
import 'package:http/http.dart' as http;

class RequestApi {
  Future<List<Data>> fetchData() async {
    final response = await http.get(Uri.parse(Constants.url));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Data.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
