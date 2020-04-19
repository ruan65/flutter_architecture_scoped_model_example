import 'package:scoped_model_example/enums/view_states.dart';
import 'package:scoped_model_example/scoped_models/base_model.dart';
import 'package:scoped_model_example/service_locator.dart';
import 'package:scoped_model_example/sevices/storage_service.dart';

class HomeModel extends BaseModel {
  String title = 'Home Model';

  setTitle(String t) {
    title = t;
    notifyListeners();
  }

  Future<bool> saveData() async {
    setState(ViewState.Busy);
    setTitle('Saving data');
    await locator<StorageService>().saveData();
    setTitle('Data saved');
    setState(ViewState.Retrieved);
    return true;
  }
}
