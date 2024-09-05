import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({super.key});

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion tile"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ExpansionTile(
          title: Text("This is title"),
          leading: Icon(Icons.info_outline),
          children: [
            ListTile(
              title: Text("information"),
            ),
            ListTile(
              title: Text("information"),
            ),
            ListTile(
              title: Text("information"),
            ),
            ListTile(
              title: Text("information"),
            ),
          ],
        ),
      ),
    );
  }
}
