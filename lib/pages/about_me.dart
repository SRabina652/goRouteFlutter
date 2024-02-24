import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/route_names.dart';

class AboutMePage extends StatelessWidget {
  final String name;
  AboutMePage({super.key, required this.name});

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
            Text("welcome $name to About me page"),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(RouteConstant.homeRoute);
            }, child: Text("HomePage")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              // this works with the name of the route
              // GoRouter.of(context).pushNamed(RouteConstant.contactRoute);
              //while this works with the path of the route
              context.go('/contact');
            }, child: Text("ContactPage")),
          ],
        ),
      ),
    );
  }
}
