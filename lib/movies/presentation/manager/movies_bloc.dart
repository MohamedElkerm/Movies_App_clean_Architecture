import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/use_cases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/presentation/manager/movies_event.dart';
import 'package:movies_app/movies/presentation/manager/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getTopRatedMoviesUseCase,
    this.getPopularMoviesUseCase,
  ) : super(const MoviesState()) {
    //TODO:Use event in the State
    on<GetNowPlayingEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase();
      result.fold(
        (l) => emit(state.copyWith(
            nowPlayingMessage: l.msg, nowPlayingState: RequestState.error)),
        (r) => emit(
          state.copyWith(
              nowPlayingMovies: r, nowPlayingState: RequestState.loaded),
        ),
      );
      print(result);
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase();
      result.fold(
        (l) => emit(
          state.copyWith(
              popularState: RequestState.error, popularMessage: l.msg),
        ),
        (r) => emit(state.copyWith(
          popularMovies: r,
          popularState: RequestState.loaded,
        )),
      );
      print(result);
    });

    on<GetTopRatedMoviesEvent>((event, emit) async {
      final result = await getTopRatedMoviesUseCase();
      result.fold(
        (l) => emit(
          state.copyWith(
              topRatedState: RequestState.error, topRatedMessage: l.msg),
        ),
        (r) => emit(
          state.copyWith(topRatedMovies: r, topRatedState: RequestState.loaded),
        ),
      );
      print(result);
    });
  }
}
