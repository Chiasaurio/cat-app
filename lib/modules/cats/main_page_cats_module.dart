part of '_lib.dart';

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
    return FutureBuilder<List<CatModel>>(
        future: CatsService.get(),
        builder: (context, snapshot) {
          if (snapshot.data == null) return _loading();

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return CatPreviewMolecule(
                url: item.url,
                country: item.breeds[0].origin,
                name: item.breeds[0].name,
                intelligence: item.breeds[0].intelligence.toString(),
                race: item.breeds[0].altNames,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DescriptionPageCatsModule(cat: item),
                    )),
              );
            },
          );
        });
  }
}
