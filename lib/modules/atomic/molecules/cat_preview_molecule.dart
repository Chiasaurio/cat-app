part of '_lib.dart';

class CatPreviewMolecule extends StatelessWidget {
  final String url;
  const CatPreviewMolecule({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(18),
      child: CatImageAtom(url: url),
    );
  }
}
