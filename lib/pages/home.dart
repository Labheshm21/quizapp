import 'package:flutter/material.dart';
import 'package:quiz1_app/pages/continuing.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.favorite, color: Colors.blue),
                ),
                const SizedBox(width: 10.0),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.person, color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Let's Play",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // Adds spacing before the gradient container
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Material(
                    elevation: 5.0, // Adds a shadow effect
                    borderRadius: BorderRadius.circular(10), // Matches container radius
                    child: Container(
                      width: double.infinity, // Makes it take the full width
                      height: 90, // Increased height to fit text & icon
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.pinkAccent, Colors.redAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)), // Optional rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10), // Adds spacing inside container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align text and icon
                        children: [
                          const Text(
                            "Level 1",
                            style: TextStyle(
                              color: Colors.white, // Changed color for better contrast
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: const Text(
                                "Travel Newbie",
                                style: TextStyle(
                                  color: Colors.white, // Changed color for better contrast
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/airballon.jpg',
                            height: 70, // Reduced height
                            width: 50, // Optional: Adjust width to maintain aspect ratio
                          ),
                          const Icon(Icons.done, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // GestureDetector added for Level 2
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Continuing()));
              },
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Material(
                      elevation: 5.0, // Adds a shadow effect
                      borderRadius: BorderRadius.circular(10), // Matches container radius
                      child: Container(
                        width: double.infinity, // Makes it take the full width
                        height: 90, // Increased height to fit text & icon
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.pinkAccent, Colors.purple],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)), // Optional rounded corners
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10), // Adds spacing inside container
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align text and icon
                          children: [
                           Text(
                              "Level 2",
                              style: TextStyle(
                                color: Colors.white, // Changed color for better contrast
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: const Text(
                                  "Continuing",
                                  style: TextStyle(
                                    color: Colors.white, // Changed color for better contrast
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/ship_image.jpg',
                              height: 70, // Reduced height
                              width: 50, // Optional: Adjust width to maintain aspect ratio
                            ),
                            const Icon(Icons.play_arrow, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Material(
                    elevation: 5.0, // Adds a shadow effect
                    borderRadius: BorderRadius.circular(10), // Matches container radius
                    child: Container(
                      width: double.infinity, // Makes it take the full width
                      height: 90, // Increased height to fit text & icon
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blueAccent, Colors.lightBlue, Colors.redAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)), // Optional rounded corners
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10), // Adds spacing inside container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align text and icon
                        children: [
                          const Text(
                            "Level 3",
                            style: TextStyle(
                              color: Colors.white, // Changed color for better contrast
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: const Text(
                                "Experienced",
                                style: TextStyle(
                                  color: Colors.white, // Changed color for better contrast
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/destination.jpg',
                            height: 70, // Reduced height
                            width: 50, // Optional: Adjust width to maintain aspect ratio
                          ),
                          const Icon(Icons.lock, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
