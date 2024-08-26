import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/ui/home/pages/home_page.dart';
import 'package:flutter_kokohub/ui/login/pages/login_page.dart';
import 'package:flutter_kokohub/ui/splash/widgets/bloc/splash_bloc.dart';
import 'package:flutter_kokohub/utils/clipper.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          if (state.isLogin) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        }
      },
      child: Stack(
        children: [
          ClipPath(
            clipper: BezierClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
