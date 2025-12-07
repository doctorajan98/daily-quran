import 'package:flutter_bloc/flutter_bloc.dart';
import 'tasbih_event.dart';
import 'tasbih_state.dart';

class TasbihBloc extends Bloc<TasbihEvent, TasbihState> {
  TasbihBloc() : super(const TasbihState(count: 0, dzikrIndex: 0)) {
    
    on<TasbihStarted>((event, emit) {
      emit(const TasbihState(count: 0, dzikrIndex: 0));
    });

    on<TasbihIncrementPressed>((event, emit) {
      final currentCount = state.count;
      final currentDzikrIndex = state.dzikrIndex;
      if (currentCount >= 33) {
        if (currentDzikrIndex >= 2) {
          emit(state.copyWith(count: 0, dzikrIndex: 0));
        }
        emit(state.copyWith(count: 0, dzikrIndex: state.dzikrIndex + 1));
      }
      emit(state.copyWith(count: state.count + 1));
    });

    on<TasbihResetPressed>((event, emit) {
      emit(state.copyWith(count: 0, dzikrIndex: 0));
    });
  }
}
