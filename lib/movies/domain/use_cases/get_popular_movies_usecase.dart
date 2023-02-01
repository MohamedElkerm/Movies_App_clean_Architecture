import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

import '../entities/movie.dart';

class GetPopularMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  Future<List<Movie>> executeGetPopular()async{
    return await baseMovieRepository.getPopularMovies();
  }
}