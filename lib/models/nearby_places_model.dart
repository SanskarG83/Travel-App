// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyPlaceModel {
  final String image;
  final String name;
  NearbyPlaceModel({
    required this.image,
    required this.name,
  });
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
    image: "assets/places/place1.png",
    name: "Kuta Resort",
  ),
  NearbyPlaceModel(
    image: "assets/places/place2.png",
    name: "Baga Beach Resort"
  ),
  NearbyPlaceModel(
    image: "assets/places/place7.jpg",
    name: "Ajantha Resort",
  ),
  NearbyPlaceModel(
    image: "assets/places/place3.jpg",
    name:  "Royal Resort",
  ),
  NearbyPlaceModel(
    image: "assets/places/place9.jpg",
    name: "The King's Resort",
  ),
  NearbyPlaceModel(
    image: "assets/places/place6.jpg",
    name: "Taj Resort",
  ),
  NearbyPlaceModel(
    image: "assets/places/place4.jpg",
    name: "Goa Resort",
  ),
];
