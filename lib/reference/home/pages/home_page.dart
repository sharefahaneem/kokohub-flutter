import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/reference/repository/joke_repository.dart';
import 'package:flutter_kokohub/reference/service/joke_service.dart';
import 'package:flutter_kokohub/reference/home/pages/home_layout.dart';
import 'package:flutter_kokohub/reference/home/widgets/all_jokes_widget/bloc/all_jokes_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
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
