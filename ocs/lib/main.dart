import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Class Schedule",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Class Schedule"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Column(
                children: [
                  const Text("WELCOME"),
                  SizedBox(
                    width: width * 0.5,
                    child: const TextField(
                      maxLength: 13,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "University Roll Number",
                      ),
                    ),
                  ),
                  ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios), label: const Text("Continue"),),
                  TextButton.icon(onPressed: () {}, icon: const Icon(Icons.person), label: const Text("Continue as Guest"))
                ],
              ),
            ),
            const Text("Crafted with ❤ by CRYP73R"),
          ],
        ),
      ),
    );
  }
}

