import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/use_case/base_use_case.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUseCase( this.baseMovieRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(movieDetail) async {
    return await baseMovieRepository.getMovieDetails(movieDetail.movieId);
  }
}

class MovieDetailsParams extends Equatable {
  final int movieId;

  const MovieDetailsParams({required this.movieId});

  @override
  List<Object> get props => [movieId];

}