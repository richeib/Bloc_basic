import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentstateValue = state.count;
      final IncrementValue = currentstateValue + 1;
      return emit(CounterState(count: state.count + 1));
    });
    on<Decrement>((event, emit) {
      final currentstateValue = state.count;
      final decrementedValue = currentstateValue - 1;
      return emit(CounterState(count: decrementedValue));
    });
  }
}
