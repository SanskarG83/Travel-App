import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/location_details/kuta_beach.dart';

import '../models/recommended_places_model.dart';

class kuta_banner extends StatelessWidget {
  const kuta_banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/places/place14.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 500,),
                  Row(
                    children: [
                      const Text(
                        "    Kuta Beach",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 100,),
                      const Icon(
                        Ionicons.location,
                        color: Colors.red,
                        size: 16,
                      ),
                      Text(
                        "${recommendedPlaces[0].location}",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "One of the most happening beaches in Goa.\nBaga Beach is where you will find water sports, \nfine dining restaurants, bars, and clubs. \nSituated in North Goa. \nBaga Beach is bordered by Calangute and Anjuna Beaches.",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Column(
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
                              color: Colors.white70,
                              size: 14,
                            ),
                            const Text(
                              "4.8",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Text("₹15,000/person",style: TextStyle(fontSize: 14,fontFamily: "Poppins",color: Colors.white),),
                        SizedBox(width: 130,),
                        TextButton(
                          child: Text("Book Now",style: TextStyle(fontSize: 14,color: Colors.black),),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => kuta_beach(),
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
