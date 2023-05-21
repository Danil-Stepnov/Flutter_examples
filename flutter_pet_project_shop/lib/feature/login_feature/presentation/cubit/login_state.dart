part of 'login_cubit.dart';

enum UserLoginStatus { initial, signIn, signUp, failure, error, signOut, emailVerify}

extension UserLoginStatusX on UserLoginStatus {
  bool get isInitial => this == UserLoginStatus.initial;

  bool get isSignIn => this == UserLoginStatus.signIn;

  bool get isSignUp => this == UserLoginStatus.signUp;

  bool get isFailure => this == UserLoginStatus.failure;

  bool get isError => this == UserLoginStatus.error;

  bool get isSignOut => this == UserLoginStatus.signOut;
}

class UserLoginState extends Equatable {
  const UserLoginState({
    this.status = UserLoginStatus.initial,
    this.accessKey,
    this.canResendEmail = false,
});

  final UserLoginStatus status;
  final UserLoginEnt? accessKey;
  final bool canResendEmail;

  UserLoginState copyWith({
    UserLoginStatus? status,
    UserLoginEnt? accessKey,
    bool? canResendEmail,
  }) {
    return UserLoginState(
      status: status ?? this.status,
      accessKey: accessKey ?? this.accessKey,
      canResendEmail: canResendEmail ?? this.canResendEmail,
    );
  }

  @override
  List<Object?> get props => [status, accessKey, canResendEmail];

}
