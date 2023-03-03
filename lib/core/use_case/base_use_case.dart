import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';


abstract class BaseUseCase<T, params> {
  Future<Either<Failure, dynamic>> call(params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object> get props => [];

}