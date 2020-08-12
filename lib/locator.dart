import 'package:get_it/get_it.dart';
import 'package:companyplaylist/DataModel/API_model.dart';
import 'package:companyplaylist/DataModel/CRUD_model.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => Api('my_schedule'));
  locator.registerLazySingleton(() => CRUDModel());
}