import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Stepper(
        steps: [
          Step(
            title: Text("step1"),
            content: Text("content 1"),
          ),
          Step(
            title: Text("step2"),
            content: Text("content 2"),
          ),
          Step(
            title: Text("step3"),
            content: Text("content 3"),
          ),
        ],
        currentStep: currentIndex,
        onStepContinue: () {
          if (currentIndex != 2) {
            setState(() {
              currentIndex++;
            });
          }
        },onStepCancel: () {
          if (currentIndex != 0) {
            setState(() {
              currentIndex--;
            });
          }
        },
      ),
    );
  }
}
