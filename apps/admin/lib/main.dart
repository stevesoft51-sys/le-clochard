import 'package:flutter/material.dart';
import 'package:le_clochard_core/le_clochard_core.dart';
import 'package:le_clochard_ui/le_clochard_ui.dart';

import 'firebase_options.dart';
import 'src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppFirebase.configure(DefaultFirebaseOptions.currentPlatform);
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
