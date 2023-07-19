import 'package:equatable/equatable.dart';

class UserInformationEnt extends Equatable {
  final int? id;
  final String? accessKey;

  const UserInformationEnt({
    required this.id,
    required this.accessKey,
  });

  @override
  List<Object?> get props => [id, accessKey];

  UserInformationEnt coptWith({
    int? id,
    String? accessKey,
  }) {
    return UserInformationEnt(
      id: id ?? this.id,
      accessKey: accessKey ?? this.accessKey,
    );
  }
}
