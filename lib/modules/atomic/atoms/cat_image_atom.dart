part of '_lib.dart';

class CatImageAtom extends StatelessWidget {
  final String url;
  const CatImageAtom({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: url,
      child: Image.network(
        url,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      ),
    );
  }
}
