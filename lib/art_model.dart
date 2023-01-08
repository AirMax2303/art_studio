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
  Art('img.png', '100 000 ₽', 'Михаил Селищев', '"Каньякумари"'),
  Art('img_1.jpg', '450 000 ₽', 'Екатерина Григорьева', 'Букет. 1972'),
  Art('img_2.png', '200 000 ₽', 'Карахан Сефербеков', 'Москва'),
  Art('img_3.png', '150 000 ₽', 'Карахан Сефербеков', 'Русский модернЪ'),
  Art('img_4.png', '240 000 ₽', 'Олег Щербатых', 'Чайный променад'),
  Art('img_5.png', '240 000 ₽', 'Олег Щербатых', 'Фигурка "Танцующая крестьянка"'),
];
