import 'package:flutter/material.dart';
import 'package:lead_application/screens/lead_details_screen.dart';
import 'package:lead_application/screens/tasks_screen.dart';
import 'screens/leads_screen.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leads App',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LeadsScreen(),
        '/details': (context) => const LeadDetailsScreen(),
        '/tasks': (context) => const TasksScreen(),
      },
    );
  }
}
