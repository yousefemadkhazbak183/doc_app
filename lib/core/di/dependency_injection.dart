import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_service.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/features/login/data/repo/login_repo.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:doc_app/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGitIt()async{
  // Dio & ApiService
  final Dio dio =   DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

// login
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit> (()=> LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<SignUpRepo>(()=> SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(()=> SignUpCubit(getIt()));
}