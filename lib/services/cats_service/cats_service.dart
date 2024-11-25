import 'dart:convert';

import 'package:cat_app/services/cats_service/models/_lib.dart';
import 'package:http/http.dart' as http;

class CatsService {
  static Future<List<CatModel>> get({String? search, int? limit = 20}) async {
    Map<String, dynamic> params = {
      "limit": limit,
      "has_breeds": 1,
    };

    if (search != null && search.isNotEmpty) {
      params["breed_ids"] = search;
    }
    var url = Uri.https(
      'api.thecatapi.com',
      '/v1/images/search',
      params.map(
        (key, value) => MapEntry(
          key,
          value.toString(),
        ),
      ),
    );
    final headers = {
      'x-api-key':
          'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr'
    };
    var response = await http.get(url, headers: headers);

    var decodedResponse = jsonDecode(response.body) as List<dynamic>;
    final images = decodedResponse
        .map(
          (element) => CatModel.fromJson(element),
        )
        .toList();
    return images;
  }
}
