import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/scoped_models/home_model.dart';
import 'package:scoped_model_example/service_locator.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
        model: locator<HomeModel>(),
        child: ScopedModelDescendant<HomeModel>(
          builder: (context, child, model) => Scaffold(
            body: Center(
              child: Text(model.title),
            ),
          ),
        ));
  }
}
