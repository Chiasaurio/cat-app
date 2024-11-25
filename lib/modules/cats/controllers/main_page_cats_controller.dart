part of '../_lib.dart';

class MainPageCatsController {
  static loadData() async {
    CatsStream.initData();
    final response = await CatsService.get();
    CatsStream.update(response);
  }

  static updateSearch(String search) async {
    CatsStream.initData();

    final response = await CatsService.get(search: search);

    CatsStream.update(response);
  }
}
