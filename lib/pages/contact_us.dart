import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/route_names.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
            Text("Contact us Page"),
            SizedBox(height: 30,),

            ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(RouteConstant.aboutRoute,pathParameters: {"name":"Rajesh"});
            }, child: Text("About Page")),
            SizedBox(height: 30,),

            ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(RouteConstant.homeRoute);
              // context.goNamed(RouteConstant.homeRoute);
            }, child: Text("Home Page")),
          ],
        ),
      ),
    );
  }
}
