import 'package:flutter/material.dart';
import 'package:travel_app/widgets/recommended_places.dart';

import '../models/places.dart';
import '../widgets/included_services.dart';

class baga_resort extends StatelessWidget {
  const baga_resort({Key? key}) : super(key: key);

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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 1,),
              child: Row(
                children: [
                  // IconButton(
                  //   icon: const Icon(
                  //     Icons.arrow_back,
                  //   ),
                  //   onPressed: () => Navigator.pop(context),
                  // ),
                  SizedBox(width: 210,),
                  IconButton(
                    icon: Icon(Icons.favorite_outline,color: Colors.black,),
                    iconSize: 25,
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(35),
        children: <Widget>[
          const SizedBox(height: 10.0),
          buildSlider(),
          const SizedBox(height: 20),
          const Text("What's Included",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ListView(
            // padding: const EdgeInsets.symmetric(horizontal: 20),
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              const SizedBox(height: 20),

              const Services(),

              const SizedBox(height: 25),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "About Trip",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${places[0]["details"]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10.0),

              const Text("Gallery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,), SizedBox(height: 5,),

              SizedBox(height: 10,),

              RecommendedPlaces(),
            ],
          ),
        ],
      ),
    );
  }
}

buildSlider() {
  return Container(
    // padding: EdgeInsets.all(40),
    height: 220.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      primary: false,
      itemCount: places == null ? 0 : places.length-2,
      itemBuilder: (BuildContext context, int index) {
        Map place = places[index];

        return ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child:
            SizedBox(
              child: Image.asset(
                "assets/places/place13.jpeg",
                height: 220.0,
                width: 280.0,
                fit: BoxFit.cover,
              ),
            ),
        );
      },
    ),
  );
}
