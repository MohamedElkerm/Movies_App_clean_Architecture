part of 'movied_details_bloc.dart';

@immutable
class MovieDetailsState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState movieDetailState;
  final String msg;

  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailState = RequestState.loading,
    this.msg = '',
  });

  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailState,
    String? msg,
  }) {
    return MovieDetailsState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailState: movieDetailState ?? this.movieDetailState,
        msg: msg ?? this.msg);
  }

  @override
  List<Object?> get props => [movieDetail, movieDetailState, msg];
}
