// For demo

class ElementMenu {
  final String title, image;
  final double price;

  ElementMenu({required this.title, required this.image, required this.price});
}

class CategoryMenu {
  final String category;
  final List<ElementMenu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "Most Popular",
    items: [
      ElementMenu(
        price: 7.4,
        image: "cesar.jpg",
        title: "Cookie Sandwich",
      ),
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Chow Fun",
      ),
      ElementMenu(
        price: 8.5,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Dim SUm",
      ),
      ElementMenu(
        price: 12.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Cookie Sandwich",
      ),
    ],
  ),
  CategoryMenu(
    category: "Beef & Lamb",
    items: [
      ElementMenu(
        price: 7.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Combo Burger",
      ),
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Combo Sandwich",
      ),
      ElementMenu(
        price: 8.5,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Dim SUm",
      ),
      ElementMenu(
        price: 12.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Oyster Dish",
      ),
    ],
  ),
  CategoryMenu(
    category: "Seafood",
    items: [
      ElementMenu(
        price: 7.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Oyster Dish",
      ),
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Oyster On Ice",
      ),
      ElementMenu(
        price: 8.5,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
  CategoryMenu(
    category: "Appetizers",
    items: [
      ElementMenu(
        price: 8.5,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Dim SUm",
      ),
      ElementMenu(
        price: 7.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Cookie Sandwich",
      ),
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Combo Sandwich",
      ),
      ElementMenu(
        price: 12.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Cookie Sandwich",
      ),
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Chow Fun",
      ),
    ],
  ),
  CategoryMenu(
    category: "Dim Sum",
    items: [
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Combo Sandwich",
      ),
      ElementMenu(
        price: 12.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Cookie Sandwich",
      ),
      ElementMenu(
        price: 8.5,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Dim SUm",
      ),
      ElementMenu(
        price: 7.4,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Oyster Dish",
      ),
      ElementMenu(
        price: 9.0,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Oyster On Ice",
      ),
      ElementMenu(
        price: 8.5,
        image: "https://yandex.by/images/search?text=%D0%A1%D0%B0%D0%BB%D0%B0%D1%82%20%D1%81%20%D0%BB%D0%BE%D1%81%D0%BE%D1%81%D0%B5%D0%BC%20%D0%B8%20%D0%B0%D0%B2%D0%BE%D0%BA%D0%B0%D0%B4%D0%BE&source=related-duck&lr=155&pos=19&img_url=http%3A%2F%2Fkartinkin.net%2Fuploads%2Fposts%2F2021-04%2F1617265104_14-p-salat-s-semgoi-slabosolenoi-krasivo-17.jpg&rpt=simage",
        title: "Fried Rice on Pot",
      ),
    ],
  ),
];
