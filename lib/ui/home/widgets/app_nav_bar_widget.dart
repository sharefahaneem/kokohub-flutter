import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import '../bloc/app_nav_bar_cubit.dart';
import '../constants/app_nav_bar_enum.dart';

class AppNavBarWidget extends StatelessWidget {
  const AppNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavBarCubit, AppNavBarState>(
      builder: (context, state) {
        return BottomAppBar(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.navBarColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavItemWidget(
                    icon: Icons.home_rounded,
                    item: AppNavBarItem.home,
                    state: state),
                NavItemWidget(
                    icon: Icons.military_tech_rounded,
                    item: AppNavBarItem.uniform,
                    state: state),
                NavItemWidget(
                    icon: Icons.groups_2_rounded,
                    item: AppNavBarItem.kelab,
                    state: state),
                NavItemWidget(
                    icon: Icons.sports_basketball_rounded,
                    item: AppNavBarItem.sukan,
                    state: state),
                NavItemWidget(
                    icon: Icons.style_rounded,
                    item: AppNavBarItem.rumahSukan,
                    state: state),
              ],
            ),
          ),
        );
      },
    );
  }
}

class NavItemWidget extends StatelessWidget {
  final IconData icon;
  final AppNavBarItem item;
  final AppNavBarState state;

  const NavItemWidget({
    super.key,
    required this.icon,
    required this.item,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = state.item == item;

    return IconButton(
      icon: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.black : Colors.black54,
          size: 24,
        ),
      ),
      onPressed: () =>
          BlocProvider.of<AppNavBarCubit>(context).getAppNavBarItem(item),
    );
  }
}
