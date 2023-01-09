import 'package:flutter/material.dart';
import 'news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (BuildContext context, int index) {
            return NewsCard(
                title: news[index].title,
                date: news[index].date,
                url: news[index].url);
          },
        ),
      ),
    );
  }
}

class NewsCard extends StatefulWidget {
  const NewsCard(
      {Key? key, required this.title, required this.date, required this.url})
      : super(key: key);
  final String title;
  final String date;
  final String url;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 100.0, bottom: 50.0),
      child: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Expanded(
                                  child: NewsDetailPage(
                                    date: widget.date,
                                    title: widget.title,
                                    url: widget.url,
                                  ),
                                )));
                      },
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(widget.date),
                  ],
                ),
                ClipRect(
                  child:
                      SizedBox(height: 200.0, child: Image.asset(widget.url)),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatefulWidget {
  const NewsDetailPage(
      {Key? key, required this.title, required this.date, required this.url})
      : super(key: key);
  final String title;
  final String date;
  final String url;

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 130.0,
                  right: 130.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Назад к новостям',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 160.0,
                right: 130.0,
                top: 30.0,
                bottom: 10.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.date,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'На выставке обладатели почетного знака «Мастер декоративно-прикладного\nискусства Кубани» представят свыше 100 работ.',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 265,
                      ),
                      ClipRect(
                        child: SizedBox(
                            height: 400.0, child: Image.asset(widget.url)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 265,
                      ),
                      Text(
                        'Фото пресс-службы министерства культуры Краснодарского края',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Экспозиция в Краснодарском краевом художественном музее имени Ф.А. Коваленко откроется 22 декабря. На выставке\n«Музей Коваленко в гостях у мастеров Кубани» гостям представят традиционные гончарные изделия, иконы,\nлоскутное шитье, кукол-ляпочих, кукол-кочанок, текстильных кукол, рушники, вышитые рубахи,\nизделия из соломки, роспись и резьбу по дереву.',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
