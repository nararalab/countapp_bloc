import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../color/color_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int incrementSize = 1;

  CounterBloc() : super(CounterState.initial()) {
    on<ChangeCounterEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter + event.incrementSize));
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
