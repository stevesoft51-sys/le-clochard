import 'package:flutter/material.dart';

class WebsiteHomePage extends StatelessWidget {
  const WebsiteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Le Clochard',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Achat et acheminement de vos produits du Canada vers le Cameroun.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Contact'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}