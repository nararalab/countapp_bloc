part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counter;
  CounterState({
    required this.counter,
  });

  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() => 'COunterState(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}

// 기본 생성 지우기
// abstract class CounterState extends Equatable {
//   const CounterState();

//   @override
//   List<Object> get props => [];
// }

// class CounterInitial extends CounterState {}
