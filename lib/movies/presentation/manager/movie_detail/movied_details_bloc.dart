import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';
import 'package:movies_app/movies/domain/use_cases/get_movie_details.dart';

part 'movied_details_event.dart';

part 'movied_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;

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
}
