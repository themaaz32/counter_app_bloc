import 'package:counter_app_bloc/feature/presentation/counter_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState) {
    on<IncrementEvent>(_onIncrementEvent);
    on<DecrementEvent>(_onDecrementEvent);
    on<ResetEvent>(_onResetEvent);
  }


  Future<void> _onIncrementEvent(
    IncrementEvent event,
    Emitter<int> emit,
  ) async {
    emit(state+1);
  }

  Future<void> _onDecrementEvent(
    DecrementEvent event,
    Emitter<int> emit,
  ) async {
    emit(state-1);
  }

  Future<void> _onResetEvent(
    ResetEvent event,
    Emitter<int> emit,
  ) async {
    emit(0);
  }
}
