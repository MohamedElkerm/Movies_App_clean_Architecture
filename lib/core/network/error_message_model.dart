import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String status_message;
  final int status_code;

  const ErrorMessageModel({required this.status_message, required this.status_code});


  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      status_message: json["status_message"],
      status_code: int.parse(json["status_code"]),
    );
  }


  Map<String, dynamic> toJson() {
    return {
      "status_message": this.status_message,
      "status_code": this.status_code,
    };
  }

  @override
  List<Object> get props => [status_code,status_message];
}