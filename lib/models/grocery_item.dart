class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var demoItems = [
  GroceryItem(
      id: 1,
      name: "Daal",
      description: "1 Kg",
      price: 30,
      // imagePath: "assets/images/grocery_images/banana.png"),
      imagePath: "assets/images/grocery_images/dal.png"),
  GroceryItem(
      id: 2,
      name: "Basmati Rice",
      description: "1kg",
      price: 100,
      // imagePath: "assets/images/grocery_images/apple.png"),
      imagePath: "assets/images/grocery_images/rice.png"),
  GroceryItem(
      id: 3,
      name: "Sugar",
      description: "1kg",
      price: 50,
      // imagePath: "assets/images/grocery_images/pepper.png"),
      imagePath: "assets/images/grocery_images/sugar.png"),
  GroceryItem(
      id: 4,
      name: "Honey",
      description: "500gm",
      price: 160,
      // imagePath: "assets/images/grocery_images/ginger.png"),
      imagePath: "assets/images/grocery_images/honey.png"),
  GroceryItem(
      id: 5,
      name: "Colgate",
      description: "1 Nos",
      price: 90,
      // imagePath: "assets/images/grocery_images/beef.png"),
      imagePath: "assets/images/grocery_images/colgate.png"),

  GroceryItem(
      id: 6,
      name: "Tea",
      description: "500gm",
      price: 180,
      // imagePath: "assets/images/grocery_images/chicken.png"),
      imagePath: "assets/images/grocery_images/tea.png"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Dite Coke",
      description: "355ml, Price",
      price: 90,
      imagePath: "assets/images/beverages_images/diet_coke.png"),
  GroceryItem(
      id: 8,
      name: "Sprite Can",
      description: "325ml, Price",
      price: 60,
      imagePath: "assets/images/beverages_images/sprite.png"),
  GroceryItem(
      id: 8,
      name: "Apple Juice",
      description: "2L, Price",
      price: 200,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),
  GroceryItem(
      id: 9,
      name: "Orange Juice",
      description: "2L, Price",
      price: 210,
      imagePath: "assets/images/beverages_images/orange_juice.png"),
  GroceryItem(
      id: 10,
      name: "Coca Cola Can",
      description: "325ml, Price",
      price: 30,
      imagePath: "assets/images/beverages_images/coca_cola.png"),
  GroceryItem(
      id: 11,
      name: "Pepsi Can",
      description: "330ml, Price",
      price: 30,
      imagePath: "assets/images/beverages_images/pepsi.png"),
];
