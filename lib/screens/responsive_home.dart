import 'package:flutter/material.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    bool isTablet = width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI"),
      ),

      body: Padding(
        padding: EdgeInsets.all(isTablet ? 24 : 12),

        child: isTablet ? tabletLayout() : mobileLayout(),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Continue"),
        ),
      ),
    );
  }

  // Mobile Layout
  Widget mobileLayout() {
    return Column(
      children: [
        cardWidget("Card 1"),
        cardWidget("Card 2"),
        cardWidget("Card 3"),
      ],
    );
  }

  // Tablet Layout
  Widget tabletLayout() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        cardWidget("Card 1"),
        cardWidget("Card 2"),
        cardWidget("Card 3"),
        cardWidget("Card 4"),
      ],
    );
  }

  Widget cardWidget(String text) {
    return Card(
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
