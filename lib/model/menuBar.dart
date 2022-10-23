class ElementMenu {
  final String title, image, typeWeight, currency, infoProduct;
  final double price, weight, id;

  ElementMenu({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.weight,
    required this.typeWeight,
    required this.currency,
    required this.infoProduct,
  });
}

class CategoryMenu {
  final String category;
  final List<ElementMenu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "Snacks",
    items: [
      ElementMenu(
          id: 0987654341,
          currency: "USD",
          price: 8,
          image: "https://amusik.ru/files/a18/a1877d5a3a24b0cd5a29a39638af1c73.jpg",
          title: "Cheese",
          infoProduct: "Set of cheeses of different varieties",
          weight: 300,
          typeWeight: "gram"
      ),
      ElementMenu(
          id: 0987654342,
          currency: "USD",
          price: 1.5,
          image: "https://kartinkin.net/uploads/posts/2022-03/thumbs/1647278102_26-kartinkin-net-p-sukhariki-kartinki-28.jpg",
          title: "Crackers",
          infoProduct: "Salted croutons from dark bread",
          weight: 100,
          typeWeight: "gram"
      ),
      ElementMenu(
          id: 0987654343,
          currency: "USD",
          price: 2,
          image: "https://kvashenaya-kapusta.ru/wp-content/uploads/7/2/1/721b71f413e834cd9866b03b7d4c9527.jpeg",
          title: "Chips",
          infoProduct: "Potato chips with salt",
          weight: 80,
          typeWeight: "gram"
      ),
      ElementMenu(
          id: 0987654344,
          currency: "USD",
          price: 3,
          image: "https://womanadvice.ru/sites/default/files/39/2015-09-20_1149/mainimage200x200/grenki_s_chesnokom.jpg.crop_display.jpg",
          title: "Crouton",
          infoProduct: "Black bread garlic croutons",
          weight: 80,
          typeWeight: "gram"
      ),
    ],
  ),
  CategoryMenu(
    category: "Alcohol",
    items: [
      ElementMenu(
          id: 0987651111,
          currency: "USD",
          price: 3,
          image: "https://static.winestreet.ru/off-line/article/1075/1.jpg",
          title: "Ballantine's whiskey",
          infoProduct: "Blended Scotch whiskey Ballantine's 12 Years Old is made from more than 40 selected varieties of grain and malt whiskey, the minimum aging period of which is 12 years.",
          weight: 50,
          typeWeight: "milliliter"
      ),
      ElementMenu(
          id: 0987654344,
          currency: "USD",
          price: 3,
          image: "https://jamesonwhiskey.s3.eu-west-1.amazonaws.com/prod/basic_uploads/sir-trevor/5c6a7d1d9ee01.jpeg",
          title: "Jameson whiskey",
          infoProduct: "Jameson whiskey is the most famous Irish whiskey. The best grains are selected for it. It gets its trademark softness thanks to triple distillation and is aged in oak barrels for at least 4 years.",
          weight: 50,
          typeWeight: "milliliter"
      ),
      ElementMenu(
          id: 0987654344,
          currency: "USD",
          price: 3,
          image: "https://ml-global.store/images/detailed/1/38.jpg",
          title: "Martel cognac",
          infoProduct: "A classic cognac made from selected spirits aged 8–12 years, with a mild taste and hints of wood and vanilla.",
          weight: 50,
          typeWeight: "milliliter"
      ),
      ElementMenu(
          id: 0987654344,
          currency: "USD",
          price: 3,
          image: "https://whic.de/media/catalog/product/6/0/600522_10.jpg",
          title: "Camus cognac",
          infoProduct: "Camus VS Elegance is created from the best cognac spirits, which are aged in oak barrels for 3 to 5 years.",
          weight: 50,
          typeWeight: "milliliter"
      ),
      ElementMenu(
          id: 0987654344,
          currency: "USD",
          price: 3,
          image: "https://catherineasquithgallery.com/uploads/posts/2021-02/1614370234_16-p-pivo-svetlii-fon-20.jpg",
          title: "Light beer",
          infoProduct: "Light wheat ale in the Bavarian style. Wheat malt makes it soft and enveloping, while a special strain of yeast adds hints of clove and banana to the aroma.",
          weight: 500,
          typeWeight: "milliliter"
      ),
      ElementMenu(
          id: 0987654344,
          currency: "USD",
          price: 3,
          image: "https://disgustingmen.com/wp-content/uploads/2018/11/craft_stout_17.jpg",
          title: "Dark beer",
          infoProduct: "Porter with a dense malt base, caramel sweetness and hints of chocolate and espresso on the palate.",
          weight: 500,
          typeWeight: "milliliter"
      ),
    ],
  ),
];
