import 'package:cat_app/modules/atomic/_package.dart';
import 'package:cat_app/services/cats_service/cats_service.dart';
import 'package:flutter/material.dart';

import '../../services/cats_service/models/_lib.dart';

class MainPageCatsModule extends StatelessWidget {
  const MainPageCatsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _builder(),
    );
  }

  _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  _builder() {
    return FutureBuilder<List<Cat>>(
        future: CatsService.get(),
        builder: (context, snapshot) {
          if (snapshot.data == null) return _loading();

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return CatPreviewMolecule(
                url: item.url ?? "",
                country: item.breeds![0].origin ?? "",
                name: item.breeds![0].name ?? "",
                intelligence: item.breeds![0].intelligence?.toString() ?? "",
                race: item.breeds![0].altNames ?? "",
              );
            },
          );
        });
  }
}
