part of '_lib.dart';

class DescriptionPageCatsModule extends StatelessWidget {
  final CatModel cat;
  const DescriptionPageCatsModule({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CatImageAtom(url: cat.url ?? "")],
      ),
    );
  }
}
