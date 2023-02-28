import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/presentation/manager/movies_event.dart';
import 'package:movies_app/movies/presentation/manager/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(const MoviesState()) {
    //TODO:Use event in the State
    on<GetNowPlayingEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.executeGetNowPlaying();
      result.fold(
        (l) => emit(MoviesState(nowPlayingMessage: l.msg,nowPlayingState: RequestState.error)),
        (r) => emit(MoviesState(nowPlayingMovies: r,nowPlayingState: RequestState.loaded)),
      );
      print(result);
    });
  }
}
