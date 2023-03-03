import 'package:movies_app/movies/domain/entities/genres.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';

MovieDetail movieDetailDummy =  MovieDetail(
  backdrop_path: "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
  genres: [
    Genres(name: 'Family', id: 10751),
  ],
  id: 438148,
  overview:
      "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
  release_date: "2022-06-29",
  runtime: 87,
  title: "Minions: The Rise of Gru",
  vote_average: 7.8,
);

List<Recommendation> recommendationDummy = [
  const Recommendation(
      backdrop_path: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backdrop_path: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backdrop_path: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backdrop_path: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backdrop_path: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      backdrop_path: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
];
