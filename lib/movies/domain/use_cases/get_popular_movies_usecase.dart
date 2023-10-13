import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/use_case/base_use_case.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';
import '../entities/movie.dart';

class GetPopularMoviesUseCase extends BaseUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  @override
   call(noParams)async{
    return await baseMovieRepository.getPopularMovies();
  }


}