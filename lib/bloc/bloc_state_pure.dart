import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {
  CounterIncrement({this.numbers = 0});

  int? numbers;
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>((event, emit) {
      // handle incoming `CounterIncrement` event
      emit(state + (event.numbers ?? 1));
    });
  }
}
