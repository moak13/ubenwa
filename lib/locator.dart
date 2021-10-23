import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/services/local_storage_service.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => StackedService());
  locator.registerLazySingleton(() => DialogService());
  await _localStorageBoost();
}

Future<void> _localStorageBoost() async {
  final instance = await LocalStorageServiceImpl().getInstance();
  locator.registerLazySingleton<LocalStorageService>(() => instance);
}
