import 'package:flutter_kokohub/repository/joke_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kokohub/repository/models/model_barrel.dart';

part 'all_jokes_event.dart';
part 'all_jokes_state.dart';

class AllJokesBloc extends Bloc<AllJokesEvent, AllJokesState> {
  final JokeRepository jokeRepository;

  AllJokesBloc({required this.jokeRepository}) : super(const AllJokesState()) {
    on<GetJokes>(_mapGetGamesEventToState);
  }

  void _mapGetGamesEventToState(
      GetJokes event, Emitter<AllJokesState> emit) async {
    try {
      emit(state.copyWith(status: AllJokesStatus.loading));
      final jokes = await jokeRepository.getJokes();
      emit(
        state.copyWith(status: AllJokesStatus.success, jokes: jokes),
      );
    } catch (error) {
      emit(state.copyWith(status: AllJokesStatus.error));
    }
  }
}
