import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/repository/joke_repository.dart';
import 'package:flutter_kokohub/service/joke_service.dart';
import 'package:flutter_kokohub/ui/home/pages/home_layout.dart';
import 'package:flutter_kokohub/ui/home/widgets/all_jokes_widget/bloc/all_jokes_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => JokeRepository(service: JokeService()),
        child: MultiBlocProvider(providers: [
          BlocProvider<AllJokesBloc>(
            create: (context) => AllJokesBloc(
              jokeRepository: context.read<JokeRepository>(),
            )..add(GetJokes()),
          )
        ], child: const HomeLayout()),
      ),
    );
  }
}
