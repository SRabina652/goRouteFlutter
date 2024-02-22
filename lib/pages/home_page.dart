import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/route_const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text("Home Page"),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(RouteConstant.contactRoute);
            }, child: Text("Contact Us")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              String username="Rabina";
              GoRouter.of(context).pushNamed(RouteConstant.aboutRoute,pathParameters: {'name':username});
            }, child: Text("About Page")),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
