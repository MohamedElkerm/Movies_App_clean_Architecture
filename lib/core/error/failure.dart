import 'package:equatable/equatable.dart';

class Failure extends Equatable{
  final String msg;

  const Failure(this.msg);

  @override
  List<Object> get props => [msg];
}


class ServerFailure extends Failure{
  const ServerFailure(super.msg);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.msg);
}