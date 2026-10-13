import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:le_clochard_client/src/app.dart';

void main() {
  testWidgets('HomePage affiche le titre de lapp', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    expect(find.text('Le Clochard'), findsOneWidget);
  });
}