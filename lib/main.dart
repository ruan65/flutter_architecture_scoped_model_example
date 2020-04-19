import 'package:flutter/material.dart';
import 'package:scoped_model_example/service_locator.dart';
import 'package:scoped_model_example/ui/views/base_view.dart';
import 'package:scoped_model_example/ui/views/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scoped Model Example',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeView(),
    );
  }
}
