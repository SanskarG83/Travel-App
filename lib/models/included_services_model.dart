// ignore_for_file: public_member_api_docs, sort_constructors_first
class serviceModel {
  final String image;
  final String name;
  serviceModel({
    required this.image,
    required this.name,
  });
}

List<serviceModel> servicesModel = [
  serviceModel(
    image: "assets/services/food.png",
    name: "Food",
  ),
  serviceModel(
      image: "assets/services/hotel.png",
      name: "Hotel"
  ),
  serviceModel(
    image: "assets/services/car.png",
    name: "Car",
  ),
];
