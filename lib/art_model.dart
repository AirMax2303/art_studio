class Art {
  late String url;
  late String price;
  late String author;
  late String name;

  Art(
    this.url,
    this.price,
    this.author,
    this.name,
  );
}

List<Art> arts = [
  Art('img.png', '100000', 'Михаил Селищев', '"Каньякумари"'),
  Art('img_1.png', '300000', 'Дмитрий Каварга',
      '"Архивация постчеловеческого компоста"'),
  Art('img_2.png', '200000', 'Карахан Сефербеков',
      'Храм Христа Спасителя. Москва'),
  Art('img_3.png', '150000', 'Карахан Сефербеков', 'Русский модернЪ'),
];
