// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:recast_flutter_assessment/features/home/data/repositories/mock_loyalty_points_repository.dart'
    as _i521;
import 'package:recast_flutter_assessment/features/home/presentation/cubit/home_cubit.dart'
    as _i540;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i521.MockLoyaltyPointsRepository>(
      () => _i521.MockLoyaltyPointsRepository(),
    );
    gh.factory<_i540.HomeCubit>(
      () => _i540.HomeCubit(gh<_i521.MockLoyaltyPointsRepository>()),
    );
    return this;
  }
}
