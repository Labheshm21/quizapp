import 'package:flutter/material.dart';

class Continuing extends StatefulWidget {
  const Continuing({super.key});

  @override
  State<Continuing> createState() => _ContinuingState();
}

class _ContinuingState extends State<Continuing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Close Icon with GestureDetector for Navigation
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Navigates back to Home screen
                },
                child: const Icon(Icons.close, color: Colors.white, size: 30),
              ),
            ),

            // Image asset
            Center(
              child: Image.asset("assets/images/air_ballon.jpeg"),
            ),

            // Title Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Level 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Continuing",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Do you feel confident? Here you will challenge one of our most difficult travel questions!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            // Continue Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 7.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
