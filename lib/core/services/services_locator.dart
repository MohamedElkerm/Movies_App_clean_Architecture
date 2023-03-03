import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/data_sources/remote/remote_movie_data_source.dart';
import 'package:movies_app/movies/data/repositories/movie_repository.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';
import 'package:movies_app/movies/domain/use_cases/get_movie_details.dart';
import 'package:movies_app/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/use_cases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/presentation/manager/movie_detail/movied_details_bloc.dart';
import 'package:movies_app/movies/presentation/manager/movies_bloc.dart';

final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    //bloc
    sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl()));

    //use cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));


    //Repository
    sl.registerLazySingleton<BaseMovieRepository>(() =>MovieRepository(sl()));

    // Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());

  }
}