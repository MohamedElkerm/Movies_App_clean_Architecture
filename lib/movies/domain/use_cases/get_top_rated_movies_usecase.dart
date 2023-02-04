import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure,List<Movie>>> executeGetTopRated()async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}