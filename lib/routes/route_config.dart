import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/pages/about_me.dart';
import 'package:go_router_flutter/pages/contact_us.dart';
import 'package:go_router_flutter/pages/home_page.dart';
import 'package:go_router_flutter/routes/route_const.dart';
import '../pages/error_page.dart';

class AppRoutes{
  GoRouter routes=GoRouter(
    // initialLocation: '/contact',
      routes: [
        GoRoute(
          name: RouteConstant.homeRoute,
          path: '/',
          pageBuilder: (context,state){
            return const MaterialPage(child: HomePage());
          },
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
          pageBuilder: (context, state){
            return MaterialPage(child: AboutMePage(
              name: state.pathParameters['name']!,
            ));
          }
        ),
        GoRoute(
            name:RouteConstant.contactRoute,
            path: '/contact',
            pageBuilder: (context,state){
              return const MaterialPage(child: ContactUs());
            }
        ),
      ]
      ,errorPageBuilder: (context,state){
        return const MaterialPage(child: ErrorPage());
  }
  );
}