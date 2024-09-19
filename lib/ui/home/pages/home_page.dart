import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/app_nav_bar_cubit.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/app_nav_bar_widget.dart';
import 'home_layout.dart';
import 'test_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BlocBuilder<AppNavBarCubit, AppNavBarState>(
        builder: (context, state) {
          return IndexedStack(
            index: state.selectedIndex,
            children: const [
              HomeLayout(),
              TestPage(), // later change to correct page
              HomeLayout(), // later change to correct page
              TestPage(), // later change to correct page
              TestPage(), // later change to correct page
            ],
          );
        },
      ),
      bottomNavigationBar: const AppNavBarWidget(),
    );
  }
}
