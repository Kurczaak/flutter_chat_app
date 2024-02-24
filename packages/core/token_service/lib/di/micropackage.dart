import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(
    // externalPackageModulesAfter: [ExternalModule(ChickenStoragePackageModule)],
    )
void initMicroPackage() {} // will not be called but needed for code generation