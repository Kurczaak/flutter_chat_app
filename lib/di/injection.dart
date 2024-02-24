import 'package:chicken_http/di/micropackage.module.dart';
import 'package:chicken_storage/di/micropackage.module.dart';
import 'package:flutter_chat_app/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:token_service/token_service.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
  externalPackageModulesBefore: [
    ExternalModule(ChickenStoragePackageModule),
    ExternalModule(ChickenHttpPackageModule),
    ExternalModule(TokenServicePackageModule),
  ],
)
void configureDependencies() => getIt.init();
