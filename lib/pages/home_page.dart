import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("Home Page"),
                ElevatedButton(onPressed: (){

                }, child: Text("Home Page")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
