// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  final String name;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
    required this.name,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/places/place10.png",
    rating: 4.2,
    name: "Kuta Beach",
    location: "Bali, Indonesia",
  ),
    RecommendedPlaceModel(
    image: "assets/places/place11.png",
    rating: 4.8,
    name: "Baga Beach",
    location: "Goa, India",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place3.jpg",
    rating: 4.4,
    name: "Ajantha Beach",
    location: "Goa, India",
  ),
  // RecommendedPlaceModel(
  //   image: "assets/places/place2.jpg",
  //   rating: 4.4,
  //   name: "St. Regis Bora Bora",
  //   location: "Bali, Indonesia"
  // ),
  // RecommendedPlaceModel(
  //   image: "assets/places/place1.jpg",
  //   rating: 4.4,
  //   name: "St. Regis Bora Bora",
];
