import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String? selectedOption;

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
          children: [
            const SizedBox(height: 50), // Moves the Row down
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10), // Adds some left padding
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 15), // Space between the close icon and "01"
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    "01",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.favorite, color: Colors.white),
                      const SizedBox(width: 10),
                      const Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Adds space between the Row and Image
            Image.asset(
              "assets/images/ship_image.jpg",
              width: double.infinity, // Make the image fit the width
              height: 350, // Set a fixed height or modify as required
              fit: BoxFit.cover, // Adjust the image fit
            ),
            Text(
              "Question 5 of 10",
              style: TextStyle(
                color: Colors.white, // Changed color for better contrast
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "In Which City of Germany is the largest port?",
              style: TextStyle(
                color: Colors.white, // Changed color for better contrast
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            // Option Box 1: Bremen
            optionBox("Bremen"),
            SizedBox(height: 30),
            // Option Box 2: Hamburg
            optionBox("Hamburg", isSelected: selectedOption == "Hamburg"),
            SizedBox(height: 30),
            // Option Box 3: Hesse
            optionBox("Hesse"),
          ],
        ),
      ),
    );
  }

  // Option box widget with smaller width and selected state
  Widget optionBox(String option, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = option; // Set the selected option
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: 250, // Reduced width for the option box
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white, // Green if selected
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? Colors.green : Colors.white, // Green border if selected
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSelected)
              const Icon(
                Icons.check,
                color: Colors.white,
              ),
            Text(
              option,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.redAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
