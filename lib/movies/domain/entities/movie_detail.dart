import 'package:equatable/equatable.dart';
import 'package:movies_app/movies/domain/entities/genres.dart';

class MovieDetail extends Equatable {
  final String backdrop_path;
  final int id;
  final String overview;
  final String release_date;
  final List<Genres> genres;
  final int runtime;
  final String title;
  final String vote_average;

  const MovieDetail({
    required this.backdrop_path,
    required this.id,
    required this.overview,
    required this.release_date,
    required this.runtime,
    required this.title,
    required this.vote_average,
    required this.genres,
  });

  @override
  List<Object> get props => [
        backdrop_path,
        id,
        overview,
        release_date,
        runtime,
        title,
        vote_average,
        genres
      ];
}
