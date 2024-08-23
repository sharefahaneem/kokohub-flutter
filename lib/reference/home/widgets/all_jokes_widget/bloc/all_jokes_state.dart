

part of 'all_jokes_bloc.dart';
enum AllJokesStatus {initial, success, error, loading}

extension AllJokesStatusX on AllJokesStatus {
  bool get isInitial => this == AllJokesStatus.initial;
  bool get isSuccess => this == AllJokesStatus.success;
  bool get isError => this == AllJokesStatus.error;
  bool get isLoading => this == AllJokesStatus.loading;
}

class AllJokesState extends Equatable {
  final Joke jokes;
  final AllJokesStatus status;

  const AllJokesState({this.status = AllJokesStatus.initial, Joke? jokes}) : jokes = jokes ?? Joke.empty;

  @override
  List<Object?> get props => [status, jokes];

  AllJokesState copyWith({
    AllJokesStatus? status,
    Joke? jokes,
  }) {
    return AllJokesState(
      status: status ?? this.status,
      jokes: jokes ?? this.jokes,
    );
  }
}