// ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Beach", image: "assets/images/beach.png"),
  TouristPlacesModel(name: "Mountain", image: "assets/images/img.png"),
  TouristPlacesModel(name: "Forest", image: "assets/icons/forest.png"),
  TouristPlacesModel(name: "City", image: "assets/icons/city.png"),
  TouristPlacesModel(name: "Desert", image: "assets/icons/desert.png"),
];
