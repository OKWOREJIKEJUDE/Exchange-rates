// ignore_for_file: file_names
import 'dart:convert';
import 'package:exchange_rate/utils/key.dart';
import 'package:http/http.dart' as http;

class ApiService {
  //   GET REQUEST

  Future getAllPostss() async {
    final allProductUrl = Uri.parse(
        //'https://openexchangerates.org/api/latest.json?base=USD&app_id=' + key);
        "https://api.exchangeratesapi.io/latest");
    //"https://openexchangerates.org/api/latest");
    final responses = await http.get(allProductUrl);
    print(responses.statusCode);
    print(responses.body);
    return json.decode(responses.body);
  }
}
