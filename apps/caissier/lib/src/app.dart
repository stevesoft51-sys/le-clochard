import 'package:flutter/material.dart';

class CaissierHomePage extends StatelessWidget {
  const CaissierHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Le Clochard - Caissier'),
      ),
      body: const Center(
        child: Text('Application Caissier / Boutique'),
      ),
    );
  }
}
