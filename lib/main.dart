import 'package:flutter/material.dart';
import 'art_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: const Text('Маркетплейс'),
      //  leading: const Text('Каталог'),
      //  actions: const <Widget>[
      //    Text('actions_1'),
      //    Text('actions_2'),
      //    Text('actions_3'),
      //  ],
      //),
      //body: GridView.builder(
      //  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //    maxCrossAxisExtent: 450,
      //    childAspectRatio: 0.8,
      //  ),
      //  itemCount: arts.length,
      //  itemBuilder: (BuildContext context, int index) {
      //    return ArtCard(
      //        url: arts[index].url,
      //        price: arts[index].price,
      //        author: arts[index].author,
      //        name: arts[index].name);
      //  },
      //),
      body: Column(
        children: [
          Text('Маркетплейс'),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(arts.length, (index) {
                return ArtCard(
                    url: arts[index].url,
                    price: arts[index].price,
                    author: arts[index].author,
                    name: arts[index].name);
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ArtCard extends StatelessWidget {
  const ArtCard(
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 400, width: 400, child: Image.asset(url)),
          Text('$priceР'),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Text(author),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Expanded(
              child: Text(
            name,
            maxLines: 3,
          )),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
