import 'package:deep/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:deep/profile.dart';
import 'package:deep/graph.dart';
import 'package:deep/refactor.dart';
import 'package:deep/gridView.dart';
import 'package:deep/radioButtons.dart';
import 'package:deep/Builder.dart';
import 'package:deep/cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ExampleNavigationBar(),
    );
  }
}
