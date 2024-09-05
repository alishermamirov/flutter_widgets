import 'dart:ui';

import 'package:flutter/material.dart';

class Backdropfilter extends StatelessWidget {
  const Backdropfilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Backdrop filter"),
      ),
      body: Stack(
        children: [
          Text(
            "0" * 10000,
            style: const TextStyle(color: Colors.green),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: const Center(
                    child: Text(
                      "Blur",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
