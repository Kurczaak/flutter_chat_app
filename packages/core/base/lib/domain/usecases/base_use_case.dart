import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

/// Base UseCase class
abstract class UseCase<Failure, Type, Params> {
  @protected
  Future<Either<Failure, Type>> execute(Params param);

  Future<Either<Failure, Type>> call(Params param) => execute(param);
}

/// UseCase with no parameters
abstract class UseCaseNoParam<Failure, Type>
    extends UseCase<Failure, Type, void> {
  @override
  Future<Either<Failure, Type>> call([void params]) => super.call(params);
}
