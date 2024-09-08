import 'package:flutter/material.dart';

class LeadDetailsScreen extends StatelessWidget {
  const LeadDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lead Details'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Living Room'),
          const SizedBox(height: 10),
          _buildFurnitureDetails('L Type Sofa', 'Small | Leather', 1),
          _buildFurnitureDetails('Single Seater Sofa', 'Large | Leather', 1),
          _buildFurnitureDetails('Wooden Chairs', 'Small | Wooden', 2),
          const SizedBox(height: 20),
          const Text('Floor Info'),
          const ListTile(
            title: Text('Existing house details'),
            subtitle:
                Text('Floor No: 10, Elevator Available, Packing Required'),
          ),
          const ListTile(
            title: Text('New house details'),
            subtitle:
                Text('Floor No: 0, Elevator Not Available, Unpacking Required'),
          ),
        ],
      ),
    );
  }

  Widget _buildFurnitureDetails(String name, String details, int quantity) {
    return ListTile(
      title: Text(name),
      subtitle: Text(details),
      trailing: Text('x$quantity'),
    );
  }
}
