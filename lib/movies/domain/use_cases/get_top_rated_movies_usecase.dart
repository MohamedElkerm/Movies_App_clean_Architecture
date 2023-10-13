import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/use_case/base_use_case.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);

  @override
  call(noParams)async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}