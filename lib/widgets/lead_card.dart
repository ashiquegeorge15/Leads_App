import 'package:flutter/material.dart';

class LeadCard extends StatelessWidget {
  const LeadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date, Title, and Time Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Date part
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aug', // Month format
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      '23', // Day format
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      '23:45', // Time format
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                // Title beside Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bangalore',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      // Address below the title
                      Text(
                        '1 MG-Lido Mall, Swami Vivekananda Road,\nSomeshwarpura, Halasuru, Bengaluru, Karnataka',
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10.0),

            // Icon Row with Arrow on the left
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Arrow Icon on the left
                Icon(Icons.arrow_downward, color: Colors.red),
                SizedBox(width: 10.0),
                // Widgets with Icons (2 BHK, 70 items, etc.)
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home, size: 20),
                          SizedBox(width: 4.0),
                          Text('2 BHK'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.list_alt, size: 20),
                          SizedBox(width: 4.0),
                          Text('70 items'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.inbox, size: 20),
                          SizedBox(width: 4.0),
                          Text('20 boxes'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 20),
                          SizedBox(width: 4.0),
                          Text('12.3 kms'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10.0),

            // Second Title Below Widgets
            const Text(
              'Bangalore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 4.0),

            // Address Below the Second Title
            Text(
              '1 MG-Lido Mall, Swami Vivekananda Road,\nSomeshwarpura, Halasuru, Bengaluru, Karnataka',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),

            const SizedBox(height: 10.0),

            // Buttons for 'View Details' and 'Submit Quote'
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    backgroundColor: Colors.red, // Button color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/details');
                  },
                  child: const Text(
                    'Submit Quote',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10.0),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    side: const BorderSide(color: Colors.red), // Border color
                  ),
                  onPressed: () {},
                  child: const Text(
                    'View Details',
                    style: TextStyle(color: Colors.red),
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
