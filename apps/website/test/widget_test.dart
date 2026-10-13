import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:le_clochard_website/src/app.dart';

void main() {
  testWidgets('WebsiteHomePage affiche le titre', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: WebsiteHomePage()));
    expect(find.text('Le Clochard'), findsOneWidget);
  });
}