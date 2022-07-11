import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/services/tree_service.dart';
import 'data/repositories/tree_repository_impl.dart';
import 'domain/repositories/tree_repository.dart';
import 'domain/usescases/tree_usecase.dart';
import 'presentation/tree_list_state.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<TreeService>(TreeService());
}
