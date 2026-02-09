import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // Dialog 1
  void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Simple Dialog"),
        content: Text("This is a simple dialog message."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  // Dialog 2
  void showConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirm Action"),
        content: Text("Do you want to continue?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  // Dialog 3
  void showWarningDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Warning"),
        content: Text("This action cannot be undone."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialogs Example")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Simple Dialog"),
              onPressed: () => showSimpleDialog(context),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Confirm Dialog"),
              onPressed: () => showConfirmDialog(context),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Warning Dialog"),
              onPressed: () => showWarningDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
