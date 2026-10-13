import 'package:flutter/material.dart';

class EmployeHomePage extends StatelessWidget {
  const EmployeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Le Clochard - Employe'),
      ),
      body: const Center(
        child: Text('Application Employe'),
      ),
    );
  }
}
