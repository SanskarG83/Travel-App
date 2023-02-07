import 'package:flutter/material.dart';
import 'package:travel_app/models/nearby_places_model.dart';
import 'package:travel_app/widgets/baga_resort_banner.dart';
import 'package:travel_app/widgets/distance.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 163,
            width: double.maxFinite,
            child: Card(
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => baga_banner(),
                      transitionDuration: Duration(seconds: 2),
                      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          nearbyPlaces[index].image,
                          height: 176.99,
                          width: 86,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text(
                                    "${nearbyPlaces[index].name}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // SizedBox(width: 75,),
                                IconButton(
                                  icon: Icon(Icons.favorite_outline),
                                  iconSize: 20, onPressed: () { print("Added to favourite"); },
                                ),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            const Text("₹20,000",style: TextStyle(fontSize: 14,color: Colors.red),),
                            // const Text("Portic Team"),
                            const SizedBox(height: 10),
                            // DISTANCE WIDGET
                            // const Distance(),
                            // const Spacer(),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ],
                                ),
                                const Text(
                                  "  4.8",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("A resort is a place used for vacation, relaxation or as a day...",style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,color: Colors.grey)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
