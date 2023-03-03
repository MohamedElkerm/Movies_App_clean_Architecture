import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/data/data_sources/remote/remote_movie_data_source.dart';
import 'package:movies_app/movies/data/models/movie_edtail_model.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (fail) {
      return Left(ServerFailure(fail.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (fail) {
      return Left(ServerFailure(fail.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (fail) {
      return Left(ServerFailure(fail.errorMessageModel.status_message));
    }
  }

  @override
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(movieDetail) async{
    final result =await baseMovieRemoteDataSource.getMovieDetails(movieDetail);
    try{
      return Right(result);
    }on ServerException catch(err){
      return Left(ServerFailure(err.errorMessageModel.status_message));
    }
  }
}
