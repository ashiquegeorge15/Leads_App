import 'package:flutter/material.dart';
import '../widgets/lead_card.dart';
import '../widgets/custom_bottom_nav.dart';

class LeadsScreen extends StatelessWidget {
  const LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leads', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Handle notification tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Handle search tap
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 2, // Dynamic number of leads, change based on actual data
        itemBuilder: (context, index) {
          return const LeadCard(); // Custom widget for each lead card
        },
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
