import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../data/repository/contact_repository_impl.dart';
import '../domain/repository/contact_repository.dart';
import '../presentation/bloc/contact_bloc.dart';

@module
abstract class ContactModule {
  @injectable
  ContactRepository contactRepository(NetworkClient networkClient) =>
      ContactRepositoryImpl(networkClient);

  @injectable
  ContactBloc contactBloc(ContactRepository repository) => ContactBloc(repository);
}

/// Register contact us dependencies
void registerContactUsDependencies(GetIt getIt) {
  getIt.registerFactory<ContactRepository>(
    () => ContactRepositoryImpl(getIt<NetworkClient>()),
  );
  
  getIt.registerFactory<ContactBloc>(
    () => ContactBloc(getIt<ContactRepository>()),
  );
}
