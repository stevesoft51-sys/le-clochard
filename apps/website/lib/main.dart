import 'package:flutter/material.dart';
import 'package:le_clochard_ui/le_clochard_ui.dart';

import 'src/app.dart';

void main() {
  runApp(const LeClochardWebsite());
}

class LeClochardWebsite extends StatelessWidget {
  const LeClochardWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Le Clochard',
      theme: LeClochardTheme.light,
      home: const WebsiteHomePage(),
    );
  }
}