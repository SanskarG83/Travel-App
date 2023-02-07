import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                const Text("Travel App Assignment",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8,),
                const Text("\t\t\t\t\t\t                                --- by Sanskar Gundecha",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.right,
                ),
                Image.asset(
                  'assets/illustration.png',
                ),
                const SizedBox(height: 40),
                const Text(
                  "Explore your journey \nwith us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "All your vacations destinations on your fingertips...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8.0,
                        ),
                      ),
                      child: const Text("Get Started"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
