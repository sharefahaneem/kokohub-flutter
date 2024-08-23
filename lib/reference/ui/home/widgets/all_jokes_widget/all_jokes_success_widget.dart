import 'package:flutter/material.dart';
import 'package:flutter_kokohub/reference/repository/models/model_barrel.dart';

class AllJokesSuccessWidget extends StatelessWidget {
  final List<Joke> jokes;
  const AllJokesSuccessWidget({super.key, required this.jokes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height:
              ((100 * jokes.length) + MediaQuery.of(context).size.width) + 24.0,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 24.0,
            ),
            itemBuilder: (context, index) {
              return Text(jokes[index].type);
            },
            separatorBuilder: (_, __) => const SizedBox(
              height: 20.0,
            ),
            itemCount: jokes.length,
          ),
        ),
      ],
    );
  }
}
