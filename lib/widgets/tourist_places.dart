import 'package:flutter/material.dart';
import 'package:travel_app/models/tourist_places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FilterChip(
            label: Container(
              height: 40,
                child: Text(touristPlaces[index].name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image,),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
            elevation: 8,
            side: BorderSide(),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),), onSelected: (bool value) {print("Selected");  },
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: touristPlaces.length,
      ),
    );
  }
}
