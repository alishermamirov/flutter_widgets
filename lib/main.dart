import 'package:flutter/material.dart';
import 'package:flutter_widgets/expansion_tile_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpansionTileWidget(),
    );
  }
}
