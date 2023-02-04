import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

import '../entities/movie.dart';

class GetPopularMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure,List<Movie>>> executeGetPopular()async{
    return await baseMovieRepository.getPopularMovies();
  }
}