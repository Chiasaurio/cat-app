part of '_lib.dart';

class DescriptionPageCatsModule extends StatelessWidget {
  final CatModel cat;
  const DescriptionPageCatsModule({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cat.breeds[0].name)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            CatImageAtom(url: cat.url),
            _description(),
          ],
        ),
      ),
    );
  }

  Expanded _description() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            cat.breeds[0].description,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
