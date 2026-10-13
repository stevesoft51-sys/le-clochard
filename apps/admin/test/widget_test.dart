import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:le_clochard_admin/src/app.dart';

void main() {
  testWidgets('AdminHomePage affiche le titre', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AdminHomePage()));
    expect(find.text('Le Clochard Admin'), findsOneWidget);
  });
}