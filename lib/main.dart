import 'package:flutter/material.dart';
import 'package:go_router_flutter/pages/home_page.dart';

void main(){
  runApp(MyAppPage());
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: ,
        // it is responsible for managing the application's navigation state and
      // deciding which pages to display based on the current navigation state.
      routerDelegate: HomePage(),
    );
  }
}
