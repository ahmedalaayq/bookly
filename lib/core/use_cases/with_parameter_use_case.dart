import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Parameter> {
  Future<Either<Failure, Type>> call(Parameter parameter);
}
