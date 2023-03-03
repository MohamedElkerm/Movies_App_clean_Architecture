import 'package:movies_app/movies/domain/entities/recomendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({ super.backdrop_path, required super.id});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
      backdrop_path: json['backdrop_path']??  '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg',
      id: json['id'],
    );
  }
}
