import 'package:flutter/material.dart';
import 'package:scoped_model_example/scoped_models/error_model.dart';
import 'package:scoped_model_example/ui/views/base_view.dart';

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ErrorModel>(
      builder: (context, child, model) => Center(
        child: Text(
          'Some Error Happends....',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
    );
  }
}
