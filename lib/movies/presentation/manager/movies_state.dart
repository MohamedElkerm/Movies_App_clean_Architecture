import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
    this.popularMessage = '',
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.topRatedMessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading,
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularMessage: popularMessage ?? this.popularMessage,
        popularState: popularState ?? this.popularState,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage,
        topRatedState: topRatedState ?? this.topRatedState);
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedMovies,
        topRatedState,
        topRatedMessage,
      ];
}
