import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/data_sources/remote/remote_movie_data_source.dart';
import 'package:movies_app/movies/data/repositories/movie_repository.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';
import 'package:movies_app/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/presentation/manager/movies_bloc.dart';

final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    //bloc
    sl.registerFactory(() => MoviesBloc(sl()));

    //use cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));

    //Repository
    sl.registerLazySingleton<BaseMovieRepository>(() =>MovieRepository(sl()));

    // Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());

  }
}