import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay time = TimeOfDay.now();

  void iosTimedialog() async {
    showDialog(
      context: context,
      useSafeArea: true,
      builder: (context) {
        return CupertinoTimerPicker(
          backgroundColor: Colors.white,
          onTimerDurationChanged: (value) {},
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time picker"),
      ),
      body: Center(
        child: Text(
          "${time.hour}h:${time.minute}m",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () async {
              final newTime = await showTimePicker(
                context: context,
                initialTime: time,
              );

              if (newTime != null) {
                setState(() {
                  time = newTime;
                });
              }
            },
            child: Text("android time"),
          ),
          SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () async {
              iosTimedialog();
            },
            child: Text("Ios time"),
          ),
        ],
      ),
    );
  }
}
