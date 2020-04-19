import 'package:flutter/material.dart';
import 'package:scoped_model_example/scoped_models/success_model.dart';
import 'package:scoped_model_example/ui/views/base_view.dart';

class SuccessView extends StatelessWidget {
  final String title;

  const SuccessView(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BaseView<SuccessModel>(
        builder: (context, child, model) {
          return Center(
            child: Text(title),
          );
        },
      ),
    );
  }
}
