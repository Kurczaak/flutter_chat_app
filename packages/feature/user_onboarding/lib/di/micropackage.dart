import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(
//   externalPackageModulesBefore: [
//   ExternalModule(AuthApiPackageModule),
//   ExternalModule(TokenServicePackageModule)
// ]
    )
void initMicroPackage() {} // will not be called but needed for code generation