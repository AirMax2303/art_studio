import 'package:flutter/material.dart';
import 'art_model.dart';
import 'art_detail_page.dart';

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
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 130.0,
                right: 130.0,
                top: 10.0,
                bottom: 20.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'КубГУ Маркетплейс',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Оплата и доставка',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            'Войти',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            'Регистрация',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            'Корзина',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Каталог',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        'Выставки',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        'Календарь',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        'Новости',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: arts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ArtCard(
                      url: arts[index].url,
                      price: arts[index].price,
                      author: arts[index].author,
                      name: arts[index].name);
                },
              ),
            ),
          ),

          //Expanded(
          //  child: GridView.count(
          //    crossAxisCount: 4,
          //    children: List.generate(arts.length, (index) {
          //      return ArtCard(
          //          url: arts[index].url,
          //          price: arts[index].price,
          //          author: arts[index].author,
          //          name: arts[index].name);
          //    }),
          //  ),
          //),
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
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Expanded(
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ArtDetailPage(
                    url: url,
                    price: price,
                    author: author,
                    name: name,
                  );
                });
          },
          child: Column(
            children: [
              ClipRect(
                child: SizedBox(height: 400.0, child: Image.asset(url)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                '$priceР',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: false,
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Text(
                author,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: false,
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: false,
              ),
              //const Divider(
              //  thickness: 1,
              //  color: Colors.black,
              //),
            ],
          ),
        ),
      ), //child: Column(
    );
  }
}
