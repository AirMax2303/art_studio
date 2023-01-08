import 'package:flutter/material.dart';

class ArtDetailPage extends StatefulWidget {
  const ArtDetailPage(
      {Key? key,
      required this.url,
      required this.price,
      required this.author,
      required this.name})
      : super(key: key);
  final String url;
  final String price;
  final String author;
  final String name;

  @override
  State<ArtDetailPage> createState() => _ArtDetailPageState();
}

class _ArtDetailPageState extends State<ArtDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 400,
        width: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: SizedBox(height: 400.0, child: Image.asset(widget.url)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.author),
              ],
            ),
          ],
        ),
        //width: 200,
        //height: 200,
      ),
    );
  }
}
