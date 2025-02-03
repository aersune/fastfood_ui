import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:products_ui/common/di/injection.config.dart';

import '../../routes/app_routes.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();
  getIt.registerLazySingleton(
    () => AppRouter(),
  );
}
