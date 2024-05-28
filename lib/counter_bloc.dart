import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

// Define events
enum CounterEvent { increment, decrement }

// Define BLoC
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // Define event handlers
    on<CounterEvent>((event, emit) {
      // Handle each event and emit a new state accordingly
      switch (event) {
        case CounterEvent.increment:
          emit(state + 1);
          break;
        case CounterEvent.decrement:
          emit(state - 1);
          break;
      }
    });
  }
}
