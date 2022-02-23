// ignore_for_file: file_names
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  //   GET REQUEST

  Future getAllPostss() async {
    final allProductUrl = Uri.parse("https://fakestoreapi.com/products");
    final responses = await http.get(allProductUrl);
    print(responses.statusCode);
    print(responses.body);
    return json.decode(responses.body);
  }
}
