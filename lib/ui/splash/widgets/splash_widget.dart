import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/ui/splash/widgets/bloc/splash_bloc.dart';
import 'package:flutter_kokohub/utils/clipper.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? state.isLogin
                ? const Text("Login")
                : const Text("Not Login")
            : state.status.isLoading
                ? Stack(
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
                  )
                : state.status.isError
                    ? const Text("error")
                    : const SizedBox();
      },
    );
  }
}
