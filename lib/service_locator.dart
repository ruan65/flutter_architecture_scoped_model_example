import 'package:get_it/get_it.dart';
import 'package:scoped_model_example/scoped_models/error_model.dart';
import 'package:scoped_model_example/scoped_models/home_model.dart';
import 'package:scoped_model_example/scoped_models/success_model.dart';
import 'package:scoped_model_example/sevices/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services
  locator.registerLazySingleton(() => StorageService());

  // Register models
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => ErrorModel());
  locator.registerFactory(() => SuccessModel());
}
