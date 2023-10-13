import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/network/api_constants.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/movies/data/models/movie_edtail_model.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';
import 'package:movies_app/movies/data/models/recommendation_model.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';

abstract class BaseMovieRemoteDataSource {
  getNowPlayingMovies();

  getPopularMovies();

 getTopRatedMovies();

  getMovieDetails(movieDetailsParams);

  getRecommendation(recommendationParams);


}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  getNowPlayingMovies() async {
    final response = await Dio().get(
      '${ApiConstants.baseUrl}/movie/popular?api_key=${ApiConstants.api}',
    );
    // print(response.data.toString());
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJsom(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  getPopularMovies() async {
    final Response response = await Dio().get(
        '${ApiConstants.baseUrl}/movie/popular?api_key=${ApiConstants.api}');
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJsom(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  getTopRatedMovies() async {
    final Response response = await Dio().get(
        '${ApiConstants.baseUrl}//movie/top_rated?api_key=${ApiConstants.api}');
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJsom(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }


  //https://api.themoviedb.org/3/movie/631842?api_key=5ed1a9a53046346a20f2591dbd595a3f
  @override
  getMovieDetails(movieDetailsParams) async{
    final response = await Dio().get(
      '${ApiConstants.baseUrl}/movie/$movieDetailsParams?api_key=${ApiConstants.api}',
    );
    // print('*///*/*/*/*/*/*/*/*/*/*/*');
    // print(response.data.toString());
    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  getRecommendation(recommendationParams) async{
    final Response response = await Dio().get(
        '${ApiConstants.baseUrl}/movie/$recommendationParams/recommendations?api_key=${ApiConstants.api}');
    if (response.statusCode == 200) {
      return List<RecommendationModel>.from((response.data['results'] as List)
          .map((e) => RecommendationModel.fromJson(e)));
    } else {
      print('EROORRRRRRRRRRRRRRRRRRRR');
      print(response.data.toString());
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }


}
