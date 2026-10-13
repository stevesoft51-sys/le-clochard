import 'package:flutter/material.dart';
import 'package:le_clochard_ui/le_clochard_ui.dart';

import 'src/app.dart';

void main() {
  runApp(const LeClochardAdminApp());
}

class LeClochardAdminApp extends StatelessWidget {
  const LeClochardAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Le Clochard Admin',
      theme: LeClochardTheme.light,
      home: const AdminHomePage(),
    );
  }
}