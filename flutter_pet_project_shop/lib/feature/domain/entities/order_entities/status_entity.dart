import 'package:equatable/equatable.dart';

class StatusEnt extends Equatable {
  final int? id;
  final String? title;
  final String? code;

  const StatusEnt({
    required this.id,
    required this.title,
    required this.code,
  });

  @override
  List<Object?> get props => [id, title, code];
}
