import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/service_locator.dart';

class BaseView<T extends Model> extends StatelessWidget {
  final ScopedModelDescendantBuilder<T> _builder;

  BaseView({@required ScopedModelDescendantBuilder<T> builder})
      : _builder = builder;

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: locator<T>(),
      child: ScopedModelDescendant(
        builder: _builder,
      ),
    );
  }
}
