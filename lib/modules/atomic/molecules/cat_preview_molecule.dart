part of '_lib.dart';

class CatPreviewMolecule extends StatelessWidget {
  final String url;
  final String name;
  final String race;
  final String intelligence;
  final String country;
  final Function() onPressed;
  const CatPreviewMolecule({
    super.key,
    required this.url,
    required this.name,
    required this.race,
    required this.intelligence,
    required this.country,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _head(),
            CatImageAtom(url: url),
            _bottom(),
          ],
        ),
      ),
    );
  }

  Padding _head() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: _text(name),
    );
  }

  Padding _bottom() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _text(country),
          _text(intelligence),
        ],
      ),
    );
  }

  Text _text(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
