import 'package:flutter/material.dart';
import 'package:scoped_model_example/enums/view_states.dart';
import 'package:scoped_model_example/scoped_models/home_model.dart';
import 'package:scoped_model_example/ui/views/base_view.dart';
import 'package:scoped_model_example/ui/views/error_view.dart';
import 'package:scoped_model_example/ui/views/success_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => Scaffold(
              body: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 120),
                    _getBodyUi(model.state),
                    SizedBox(height: 120),
                    Center(
                      child: Text(model.title),
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.save),
                  onPressed: () async {
                    bool success = await model.saveData();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => success
                            ? SuccessView('Success view')
                            : ErrorView()));
                  }),
            ));
  }
}

Widget _getBodyUi(ViewState state) {
  switch (state) {
    case ViewState.Busy:
      return CircularProgressIndicator();
    case ViewState.Retrieved:
    default:
      return Text('Done');
  }
}
