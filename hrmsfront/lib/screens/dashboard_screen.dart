import 'package:flutter/material.dart';
import 'punch_screen.dart';
import 'leave_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Punch In / Out"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PunchScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Apply Leave"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LeaveScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
