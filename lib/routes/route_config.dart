import 'dart:js';

import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/pages/home_page.dart';

class AppRoutes{
  final routes=GoRouter(
      routes: [
        GoRoute(
          name: 'home',
          path: '/',
          builder: (context,state)=>const HomePage(),
        )
      ]
  );
}