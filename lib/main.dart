import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      home: const MyHomePage(),
    );
  }
}

// Center the TextFields in the middle of the screen
class CenteredColumn extends StatelessWidget {
  final List<Widget> children;

  const CenteredColumn({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: children),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo Home Page')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ), // Add padding to push content down
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: _buildInputDecoration('Hotel/House Name'),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: _buildInputDecoration('Number of Floors'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: _buildInputDecoration(
                    'Number of Rooms Each Floor',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Update the InputDecoration to include a filled background color
InputDecoration _buildInputDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    suffixIcon: Icon(Icons.delete),
    filled: true,
    fillColor: Colors.purple,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
  );
}
