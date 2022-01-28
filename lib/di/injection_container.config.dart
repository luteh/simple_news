// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote/api_service/my_api_service.dart' as _i4;
import '../data/remote/remote_data_source.dart' as _i5;
import '../data/repository/my_repository_impl.dart' as _i7;
import '../domain/repository/my_repository.dart' as _i6;
import '../domain/usecase/fetch_news_usecase.dart' as _i8;
import '../presentation/pages/home/bloc/home_bloc.dart' as _i9;
import 'register_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<String>(() => registerModule.apiKey, instanceName: 'apiKey');
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio(
      get<String>(instanceName: 'baseUrl'),
      get<String>(instanceName: 'apiKey')));
  gh.lazySingleton<_i4.MyApiService>(() => _i4.MyApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i5.RemoteDataSource>(
      () => _i5.RemoteDataSource(get<_i4.MyApiService>()));
  gh.lazySingleton<_i6.MyRepository>(
      () => _i7.MyRepositoryImpl(get<_i5.RemoteDataSource>()));
  gh.lazySingleton<_i8.FetchNewsUseCase>(
      () => _i8.FetchNewsUseCase(myRepository: get<_i6.MyRepository>()));
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(get<_i8.FetchNewsUseCase>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
