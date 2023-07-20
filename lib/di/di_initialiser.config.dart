// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bdd_isearch/di/di_initialiser.dart' as _i7;
import 'package:bdd_isearch/feature/free_text/data/api/songs_api.dart' as _i4;
import 'package:bdd_isearch/feature/free_text/data/repository/songs_repository.dart'
    as _i5;
import 'package:bdd_isearch/feature/free_text/domain/use_case/get_songs_use_case.dart'
    as _i6;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dio());
    gh.factory<_i4.SongsApi>(() => _i4.SongsApi(gh<_i3.Dio>()));
    gh.factory<_i5.SongsRepository>(
        () => _i5.SongsRepository(gh<_i4.SongsApi>()));
    gh.factory<_i6.GetSongsUseCase>(
        () => _i6.GetSongsUseCase(gh<_i5.SongsRepository>()));
    return this;
  }
}

class _$DioModule extends _i7.DioModule {}
