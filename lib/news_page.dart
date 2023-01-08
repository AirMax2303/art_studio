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
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 30,
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
