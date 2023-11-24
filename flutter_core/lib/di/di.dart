import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_core/notifiers/settings_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupDependecies() {
  getIt.registerSingleton<DyteMobileClient>(DyteMobileClient());
  getIt.registerSingleton<LocalUserSettingsRepository>(
      LocalUserSettingsRepository(dyteMobileClient));
}

final dyteMobileClient = getIt.get<DyteMobileClient>();
final localUserSettingsRepository = getIt.get<LocalUserSettingsRepository>();
