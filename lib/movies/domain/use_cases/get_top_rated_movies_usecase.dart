import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);

  Future<List<Movie>> executeGetTopRated()async{
    return await baseMovieRepository.getTopRatedMovies();
  }
}