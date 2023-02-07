import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/widgets/custom_icon_button.dart';
import 'package:travel_app/widgets/location_card.dart';
import 'package:travel_app/widgets/nearby_places.dart';
import 'package:travel_app/widgets/recommended_places.dart';
import 'package:travel_app/widgets/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 5,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 5,),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/images/Ellipse 1.png")),
                  SizedBox(width: 10,),
                  Text("Hello, Vineetha",style: TextStyle(fontSize: 17),),
                  SizedBox(width: 140,),
                  Icon(Icons.light,color: Colors.black,),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          // LOCATION CARD
          // const LocationCard(),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Where do you \nwant to explore today?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 15,),

          const TextField(
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              hintText: 'Search ...',
              hintStyle: TextStyle(fontSize: 16,),
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Color(0x00bababa),
            ),
          ),
          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Choose Category",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: const Text("See All",style: TextStyle(color: Colors.grey,fontSize: 12),)),
            ],
          ),
          const SizedBox(height: 10,),

          const TouristPlaces(),

          const SizedBox(height: 10),

          const RecommendedPlaces(),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Package",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: const Text("See All",style: TextStyle(color: Colors.grey,fontSize: 12),))
            ],
          ),
          const SizedBox(height: 10),
          const NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
