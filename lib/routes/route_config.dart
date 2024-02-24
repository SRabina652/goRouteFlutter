import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/pages/about_me.dart';
import 'package:go_router_flutter/pages/contact_us.dart';
import 'package:go_router_flutter/pages/home_page.dart';
import 'package:go_router_flutter/routes/route_names.dart';
import '../pages/error_page.dart';

class AppRoutes{
  GoRouter routes=GoRouter(
    // initialLocation: '/contact',
      routes: [
        GoRoute(
          name: RouteConstant.homeRoute,
          path: '/',
          builder: (context,state)=>HomePage(),
            // child routing
          // routes: [
          //   GoRoute(
          //     name: RouteConstant.aboutRoute,
          //     path: 'about',
          //     pageBuilder: (context,state){
          //       return const MaterialPage(child: AboutMePage());
          //     },
          //   ),
          //   GoRoute(
          //       name:RouteConstant.contactRoute,
          //       path: 'contact',
          //       pageBuilder: (context,state){
          //         return const MaterialPage(child: ContactUs());
          //       }
          //   ),
          // ]
        ),
        GoRoute(
          name: RouteConstant.aboutRoute,
          path: '/about/:name',
          builder: (context, state)=>AboutMePage(name: state.pathParameters['name']!),
        ),
        GoRoute(
            name:RouteConstant.contactRoute,
            path: '/contact',
            builder: (context,state)=> ContactUs(),
        ),
      ]
      ,errorPageBuilder: (context,state){
        return const MaterialPage(child: ErrorPage());
  }
  );
}