class Menu {
  String name;
  String description;
  String imgLink;
  num price;
  bool favourite;
  Menu(
      {required this.name,
      required this.description,
      required this.imgLink,
      required this.favourite,
      required this.price});
}

List<Menu> menulist = [
  Menu(
      name: "Tacos",
      description: "popular tacos",
      imgLink:
          "https://static01.nyt.com/images/2017/05/14/magazine/14eat1/14eat1-articleLarge-v2.jpg",
      favourite: false,
      price: 14.99),
  Menu(
      name: "Wrap",
      description: "a wrap",
      imgLink:
          "https://www.beyondthechickencoop.com/wp-content/uploads/2021/08/Turkey-Wraps-1.jpg",
      favourite: false,
      price: 11.99),
  Menu(
      name: "Vegatable Biryini",
      imgLink:
          "https://images.immediate.co.uk/production/volatile/sites/30/2020/10/Vegetable-Biryani-With-Green-Raita-159c15d.jpg?quality=90&resize=556,505",
      description: "nothing",
      favourite: true,
      price: 20.99)
];
