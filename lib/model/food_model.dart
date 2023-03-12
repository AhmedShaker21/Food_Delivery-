class FoodModel {
  final int? id;
  final String? name;
  final int price;
  int orderNumber;

  FoodModel({this.id, this.name, required this.price, required this.orderNumber});

  static List<FoodModel> list = [
    FoodModel(
      id: 1,
      name: "Spacy fresh crab",
      price: 35,
      orderNumber: 1,
    ),
    FoodModel(
      id: 2,
      name: "Spacy fresh crab" ,
      price: 35,
      orderNumber: 1,
    ),
    FoodModel(
      id: 3,
      name: "Spacy fresh crab" ,
      price: 35,
      orderNumber: 1,
    ),
  ];
}