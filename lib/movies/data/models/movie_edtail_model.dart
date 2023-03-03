import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
   MovieDetailsModel({
    super.backdrop_path,
    required super.id,
    required super.overview,
    required super.release_date,
    required super.runtime,
    required super.title,
    required super.vote_average,
    required super.genres,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdrop_path: json['backdrop_path']??'/tmU7GeKVybMWFButWEGl2M4GeiP.jpg'  ,
      id: json['id'],
      overview: json['overview'],
      release_date: json['release_date'],
      runtime: json['runtime'],
      title: json['title'],
      vote_average: json['vote_average'],
      genres: List.from(json['genres'].map((e) => GenresModel.fromJson(e))),
    );
  }
}
