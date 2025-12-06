import 'package:flutter_bloc/flutter_bloc.dart';
import 'tasbih_event.dart';
import 'tasbih_state.dart';

class TasbihBloc extends Bloc<TasbihEvent, TasbihState> {
  TasbihBloc() : super(const TasbihState(count: 0)) {
    
    on<TasbihStarted>((event, emit) {
      emit(const TasbihState(count: 0));
    });

    on<TasbihIncrementPressed>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<TasbihResetPressed>((event, emit) {
      emit(state.copyWith(count: 0));
    });
  }
}
