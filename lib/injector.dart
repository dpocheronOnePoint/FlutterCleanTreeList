import 'package:clean_archi_flutter_tree_list/domain/repositories/tree_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/services/tree_service.dart';
import 'data/repositories/tree_repository_impl.dart';
import 'domain/usescases/tree_usecase.dart';
import 'presentation/tree_list_state.dart';
import 'data/database/dao/tree_dao.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<TreeService>(TreeService());
  getIt.registerSingleton<TreeRepository>(TreeRepositoryImpl());
  getIt.registerSingleton(TreeUseCase());
  getIt.registerSingleton<TreeListState>(TreeListState());
  getIt.registerSingleton<TreeDAO>(TreeDAO());
}
