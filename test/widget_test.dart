// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app/LoginScreen.dart';
import 'package:flutter_app/alert.dart';
import 'package:flutter_app/auto_complete.dart';
import 'package:flutter_app/bottom_sheet.dart';
import 'package:flutter_app/create.dart';
import 'package:flutter_app/home_widget.dart';
import 'package:flutter_app/examples/http_request.dart';
import 'package:flutter_app/late_breakfast.dart';
import 'package:flutter_app/main_data.dart';
import 'package:flutter_app/name.dart';
import 'package:flutter_app/basket.dart';
import 'package:flutter_app/order_address.dart';
import 'package:flutter_app/pages.dart';
import 'package:flutter_app/examples/screen_one.dart';
import 'package:flutter_app/examples/show_request.dart';
import 'package:flutter_app/save_data.dart';
import 'package:flutter_app/save_data_1.dart';
import 'package:flutter_app/save_data_2.dart';
import 'package:flutter_app/save_data_3.dart';
import 'package:flutter_app/switch_list.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SaveDataThree());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}