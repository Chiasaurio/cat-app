import 'dart:convert';

import 'package:cat_app/services/cats_service/models/_lib.dart';
import 'package:http/http.dart' as http;

class CatsService {
  static Future<List<Cat>> get({int limit = 10}) async {
    var url = Uri.https(
      'api.thecatapi.com',
      '/v1/images/search',
      {
        "limit": limit,
        "has_breeds": 1,
      }.map((key, value) => MapEntry(key, value.toString())),
    );
    final headers = {
      'x-api-key':
          'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr'
    };
    var response = await http.get(url, headers: headers);

    var decodedResponse = jsonDecode(response.body) as List<dynamic>;
    final images = decodedResponse
        .map(
          (element) => Cat.fromJson(element),
        )
        .toList();
    return images;
  }
}
