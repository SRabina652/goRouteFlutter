import 'package:flutter/material.dart';
import 'package:go_router_flutter/pages/home_page.dart';
import 'package:go_router_flutter/routes/route_config.dart';

void main()=>runApp(const MyAppPage());

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes().routes,
    );
  }
}
