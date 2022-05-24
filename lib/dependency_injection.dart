import 'package:educator/data/datasourses/local/sqlite/db_helper.dart';
import 'package:educator/data/repositories/child_repository_impl.dart';
import 'package:educator/data/repositories/nots_repository_impl.dart';
import 'package:educator/domain/repositories/child_repository.dart';
import 'package:educator/domain/repositories/notes_repository.dart';
import 'package:educator/presentation/cubit/child_cubit/child_cubit.dart';
import 'package:educator/presentation/cubit/note_cubit/note_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:educator/data/datasourses/remote/dio_helper.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => AppInterceptors());
  getIt.registerLazySingleton(() => DioHelper());
  getIt.registerLazySingleton(() => DBHelper());
  getIt.registerLazySingleton<NotesRepository>(
      () => NotesRepositoryImpl(getIt()));
  getIt.registerFactory(() => NoteCubit(getIt()));
  // getIt.registerLazySingleton<ChildrenRepository>(
  //     () => ChildrenRepositoryImpl(getIt()));
  // getIt.registerFactory(() => ChildCubit(getIt()));
}
