import 'package:educator/data/datasourses/local/sqlite/db_helper.dart';
import 'package:educator/data/repositories/nots_repository_impl.dart';
import 'package:educator/domain/repositories/notes_repository.dart';
import 'package:educator/presentation/cubit/note/note_cubit.dart';
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
}
