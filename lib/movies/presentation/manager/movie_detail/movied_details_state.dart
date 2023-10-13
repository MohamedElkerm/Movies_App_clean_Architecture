part of 'movied_details_bloc.dart';

@immutable
class MovieDetailsState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState movieDetailState;
  final String msg;

  // final List<Recommendation> recommendation;
  // final RequestState recommendationState;
  // final String recommendationMsg;

  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailState = RequestState.loading,
    this.msg = '',
    // this.recommendationState = RequestState.loading,
    // this.recommendationMsg = '',
    // this.recommendation = const [],
  });

  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailState,
    String? msg,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMsg,
  }) {
    return MovieDetailsState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailState: movieDetailState ?? this.movieDetailState,
        msg: msg ?? this.msg);
        // recommendation: recommendation ?? this.recommendation,
        // recommendationMsg: recommendationMsg ?? this.recommendationMsg,
        // recommendationState: recommendationState ?? this.recommendationState);
  }

  @override
  List<Object?> get props =>
      [
        movieDetail,
        movieDetailState,
        msg,
        // recommendation,
        // recommendationState,
        // recommendationMsg,
      ];
}
