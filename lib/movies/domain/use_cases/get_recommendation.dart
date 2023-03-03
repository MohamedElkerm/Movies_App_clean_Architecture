import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/use_case/base_use_case.dart';
import 'package:movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetRecommendationUseCase extends BaseUseCase {


  final BaseMovieRepository baseMovieRepository;

  GetRecommendationUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, dynamic>> call(recommendationParams) async{
    return  await baseMovieRepository.getRecommendation(recommendationParams);
  }

}


class RecommendationParams extends Equatable {
  final int id;

  const RecommendationParams({required this.id});


  @override
  List<Object> get props => [id];
}