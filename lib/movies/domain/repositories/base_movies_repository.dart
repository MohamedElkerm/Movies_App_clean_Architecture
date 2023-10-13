import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';

abstract class BaseMovieRepository {
  getNowPlayingMovies();
  getPopularMovies();
  getTopRatedMovies();

  getMovieDetails(int movieDetail);
  getRecommendation(recommendationParams);
}