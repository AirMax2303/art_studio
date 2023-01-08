class News {
  late String title;
  late String date;
  late String url;

  News(this.title, this.date, this.url);
}

List<News> news = [
  News(
      'Победителем конкурса на разработку архитектурной\nконцепции летнего кинотеатра Garage Screen\nстало бюро LIPMAN ARCHITECTS',
      '18 ОКТЯБРЯ 2021',
      'news_1.png'),
  News(
      'Акварельный пейзаж Ван Гога будет выставлен на аукцион в рамках\nреституционного соглашения с наследниками',
      '19 ОКТЯБРЯ 2021',
      'news_2.png'),
  News(
      'Пушкинский музей представит 23 октября выставку\nитальянского футуризма',
      '20 ОКТЯБРЯ 2021',
      'news_3.png'),
];
