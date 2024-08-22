import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/ui/home/widgets/all_jokes_widget/bloc/all_jokes_bloc.dart';

class AllJokesWidget extends StatelessWidget {
  const AllJokesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllJokesBloc, AllJokesState>(builder: (context, state) {
      return state.status.isSuccess
          ? Column(
            children: [
              Text(state.jokes.setup),
              Text((state.jokes.delivery))
            ],
          )
          : state.status.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.status.isError
                  ? const Text("error")
                  : const SizedBox();
    });
  }
}
