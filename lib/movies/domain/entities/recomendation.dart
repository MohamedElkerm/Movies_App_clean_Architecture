import 'package:equatable/equatable.dart';

class Recommendation extends Equatable {
  final String? backdrop_path;
  final int id;

  const Recommendation({required this.backdrop_path,required this.id});

  @override
  List<Object?> get props => [backdrop_path, id];
}