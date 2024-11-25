part of '../_lib.dart';

class CatsStream {
  static StreamController<List<CatModel>>? _catsStream;

  static Stream<List<CatModel>>? get catsStream => _catsStream?.stream;

  static void update(List<CatModel> data) {
    _catsStream?.add(data);
  }

  static Future<void> initData() async {
    _catsStream ??= StreamController.broadcast();
  }

  static Future<void> dispose() async {
    _catsStream?.close();
    _catsStream = null;
  }
}
