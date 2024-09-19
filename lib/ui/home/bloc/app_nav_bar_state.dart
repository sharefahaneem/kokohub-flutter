part of 'app_nav_bar_cubit.dart';

class AppNavBarState extends Equatable {
  final AppNavBarItem item;
  final int selectedIndex;

  const AppNavBarState(
    this.item,
    this.selectedIndex,
  );

  @override
  List<Object?> get props => [
        item,
        selectedIndex,
      ];
}
