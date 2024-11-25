part of '../_lib.dart';

class MainPageCatsModule extends StatefulWidget {
  const MainPageCatsModule({super.key});

  @override
  State<MainPageCatsModule> createState() => _MainPageCatsModuleState();
}

class _MainPageCatsModuleState extends State<MainPageCatsModule> {
  final Debouncer _debouncer = Debouncer(milliseconds: 1500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreads'),
        centerTitle: true,
      ),
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

          return _listCats(snapshot);
        });
  }

  _searchDelegate() {
    return SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
      return SearchBar(
        controller: controller,
        hintText: 'Buscar',
        elevation: const WidgetStatePropertyAll<double>(0.0),
        padding: const WidgetStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0)),
        onChanged: (value) {
          _debouncer.run(() async {
            // _loadSkus(value);
          });
        },
        leading: const Icon(Icons.search),
      );
    }, suggestionsBuilder: (BuildContext _, SearchController controller) {
      return [];
    });
  }

  CustomScrollView _listCats(AsyncSnapshot<List<CatModel>> snapshot) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          pinned: false,
          snap: false,
          centerTitle: true,
          toolbarHeight: 70,
          title: _searchDelegate(),
        ),
        SliverList.builder(
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
                    builder: (context) => DescriptionPageCatsModule(cat: item),
                  )),
            );
          },
        ),
      ],
    );
  }
}
