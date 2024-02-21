import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("Contact Us Page"),
                ElevatedButton(onPressed: (){

                }, child: Text("ContactPage")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
