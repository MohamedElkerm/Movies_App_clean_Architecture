import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

abstract class BaseUseCase<T> {
  Future<Either<Failure,List<T>>> call();
}