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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(widget.url),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(120.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.author,
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.price,
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 25,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        'Купить',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Холст, масло. 54х50 см.\nАвторская подпись на обороте, там же, рукой автора - название, год и размеры.\nВ раме.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      //child: Container(
      //  height: 400,
      //  width: 800,
      //  decoration: BoxDecoration(
      //    borderRadius: BorderRadius.circular(20.0),
      //    color: Colors.white,
      //  ),
      //  child: Row(
      //    mainAxisAlignment: MainAxisAlignment.center,
      //    children: [
      //      Padding(
      //        padding: const EdgeInsets.all(8.0),
      //        child: ClipRRect(
      //          borderRadius: BorderRadius.circular(12.0),
      //          child: SizedBox(height: 400.0, child: Image.asset(widget.url)),
      //        ),
      //      ),
      //      Column(
      //        mainAxisAlignment: MainAxisAlignment.start,
      //        children: [
      //          Text(widget.author),
      //        ],
      //      ),
      //    ],
      //  ),
      //  //width: 200,
      //  //height: 200,
      //),
    );
  }
}
