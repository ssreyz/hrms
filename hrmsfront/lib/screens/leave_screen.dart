import 'package:flutter/material.dart';
import '../services/api_service.dart';

class LeaveScreen extends StatelessWidget {
  final fromCtrl = TextEditingController();
  final toCtrl = TextEditingController();
  final reasonCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Apply Leave")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: fromCtrl, decoration: InputDecoration(labelText: "From Date")),
            TextField(controller: toCtrl, decoration: InputDecoration(labelText: "To Date")),
            TextField(controller: reasonCtrl, decoration: InputDecoration(labelText: "Reason")),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () async {
                await ApiService.applyLeave(
                  fromCtrl.text,
                  toCtrl.text,
                  reasonCtrl.text,
                  "MANAGER_ID_HERE"
                );
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Leave Applied")));
              },
            )
          ],
        ),
      ),
    );
  }
}
