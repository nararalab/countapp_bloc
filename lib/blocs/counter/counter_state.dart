part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  CounterState({
    required this.counter,
  });

  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  @override
  String toString() => 'CounterState(counter: $counter)';

  @override
  List<Object> get props => [counter];

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}

// abstract class CounterState extends Equatable {
//   const CounterState();
  
//   @override
//   List<Object> get props => [];
// }

// class CounterInitial extends CounterState {}
