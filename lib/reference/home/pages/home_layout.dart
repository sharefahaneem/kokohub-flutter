import 'package:flutter/material.dart';
import 'package:flutter_kokohub/reference/home/widgets/all_jokes_widget/all_jokes_widget.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Home Page"),
            AllJokesWidget(),
          ],
        ));
  }
}
