part of 'splash_bloc.dart';

enum SplashStatus { initial, success, error, loading }

extension SplashStatusX on SplashStatus {
  bool get isInitial => this == SplashStatus.initial;
  bool get isSuccess => this == SplashStatus.success;
  bool get isError => this == SplashStatus.error;
  bool get isLoading => this == SplashStatus.loading;
}

class SplashState extends Equatable {
  final SplashStatus status;
  final bool isLogin;

  const SplashState({this.status = SplashStatus.initial, bool? isLogin})
      : isLogin = isLogin ?? false;

  @override
  List<Object?> get props => [status, isLogin];

  SplashState copyWith({SplashStatus? status, bool? isLogin}) {
    return SplashState(
      status: status ?? this.status,
      isLogin: isLogin ?? this.isLogin,
    );
  }
}
