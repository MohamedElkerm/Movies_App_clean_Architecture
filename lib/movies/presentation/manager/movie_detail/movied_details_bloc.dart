import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';
import 'package:movies_app/movies/domain/use_cases/get_movie_details.dart';
import 'package:movies_app/movies/domain/use_cases/get_recommendation.dart';

part 'movied_details_event.dart';

part 'movied_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    // on<GetMovieRecommendationEvent>(_getRecommendation);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  // final GetRecommendationUseCase getRecommendationUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParams(movieId: event.id));

    result.fold(
      (l) => emit(
          state.copyWith(movieDetailState: RequestState.error, msg: l.msg)),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailState: RequestState.loaded,
        ),
      ),
    );
  }

  // FutureOr<void> _getRecommendation(GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async{
  //   final result =
  //   await getRecommendationUseCase(RecommendationParams(id: event.id));
  //
  //   result.fold(
  //         (l) => emit(
  //         state.copyWith(recommendationState: RequestState.error, recommendationMsg: l.msg)),
  //         (r) => emit(
  //       state.copyWith(
  //         recommendation: r,
  //         recommendationState: RequestState.loaded,
  //       ),
  //     ),
  //   );
  // }

  // FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event, Emitter<MovieDetailsState> emit) async{
  //   final result =
  //     await getRecommendationUseCase(RecommendationParams(id: event.id));
  //
  //     result.fold(
  //           (l) => emit(
  //           state.copyWith(recommendationState: RequestState.error, recommendationMsg: l.msg)),
  //           (r) => emit(
  //         state.copyWith(
  //           recommendation: r,
  //           recommendationState: RequestState.loaded,
  //         ),
  //       ),
  //     );
  // }
}
