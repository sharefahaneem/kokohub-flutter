import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/repository/splash_repostitory.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SplashRepository splashRepository;

  SplashBloc({required this.splashRepository}) : super(SplashState()) {
    on<GetIsLogin>(_mapGetIsLoginEventToState);
  }

  void _mapGetIsLoginEventToState(
      GetIsLogin event, Emitter<SplashState> emit) async {
    try {
      emit(state.copyWith(status: SplashStatus.loading));

      await Future.delayed(const Duration(seconds: 5));

      final isLogin = splashRepository.getIsLogin();
      emit(
        state.copyWith(status: SplashStatus.success, isLogin: isLogin),
      );
    } catch (error) {
      emit(state.copyWith(status: SplashStatus.error));
    }
  }
}
