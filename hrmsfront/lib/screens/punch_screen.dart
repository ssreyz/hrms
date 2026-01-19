import 'package:flutter/material.dart';
import '../services/api_service.dart';

class PunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Punch In (Office)"),
              onPressed: () async {
                await ApiService.punchIn("OFFICE");
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Punched In")));
              },
            ),
            ElevatedButton(
              child: Text("Punch Out"),
              onPressed: () async {
                await ApiService.punchOut();
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Punched Out")));
              },
            )
          ],
        ),
      ),
    );
  }
}
