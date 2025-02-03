// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:products_ui/common/di/app_module.dart' as _i938;
import 'package:products_ui/common/widgets/display/display.dart' as _i467;
import 'package:products_ui/common/widgets/display/display_impl.dart' as _i905;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.singleton<_i467.Display>(() => _i905.DisplayImpl());
    return this;
  }
}

class _$AppModule extends _i938.AppModule {}
