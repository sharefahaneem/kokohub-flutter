import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/ui/home/constants/app_nav_bar_enum.dart';
import 'package:equatable/equatable.dart';

part 'app_nav_bar_state.dart';

class AppNavBarCubit extends Cubit<AppNavBarState> {
  AppNavBarCubit() : super(const AppNavBarState(AppNavBarItem.home, 0));

  void getAppNavBarItem(AppNavBarItem item) {
    switch (item) {
      case AppNavBarItem.home:
        emit(const AppNavBarState(AppNavBarItem.home, 0));
        break;
      case AppNavBarItem.uniform:
        emit(const AppNavBarState(AppNavBarItem.uniform, 1));
        break;
      case AppNavBarItem.kelab:
        emit(const AppNavBarState(AppNavBarItem.kelab, 2));
        break;
      case AppNavBarItem.sukan:
        emit(const AppNavBarState(AppNavBarItem.sukan, 3));
        break;
      case AppNavBarItem.rumahSukan:
        emit(const AppNavBarState(AppNavBarItem.rumahSukan, 4));
        break;
    }
  }
}
