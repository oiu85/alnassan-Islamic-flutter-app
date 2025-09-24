import 'package:get_it/get_it.dart';

import '../../../../core/network/network_client.dart';
import '../data/repository/books_repository_impl.dart';
import '../domain/repository/books_repository.dart';
import '../presentation/bloc/books_bloc.dart';

/// Registers books feature dependencies
void registerBooksDependencies(GetIt getIt) {
  // Repository
  getIt.registerLazySingleton<BooksRepository>(() => BooksRepositoryImpl(getIt<NetworkClient>()));
  
  // Bloc
  getIt.registerFactory<BooksBloc>(() => BooksBloc(getIt<BooksRepository>()));
}
