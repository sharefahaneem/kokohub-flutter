import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/constants/app_colors.dart';
import 'package:flutter_kokohub/repository/service/shared_preferences_service.dart';
import 'package:flutter_kokohub/repository/splash_repostitory.dart';
import 'package:flutter_kokohub/ui/splash/pages/splash_layout.dart';
import 'package:flutter_kokohub/ui/splash/widgets/bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: RepositoryProvider(
        create: (context) =>
            SplashRepository(service: SharedPreferencesService.instance),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<SplashBloc>(
              create: (context) => SplashBloc(
                splashRepository: context.read<SplashRepository>(),
              )..add(GetIsLogin()),
            ),
          ],
          child: SplashLayout(),
        ),
      ),
    );
  }
}
