import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, int>{
  CounterBloc() : super(0){
    on<IncEvent>(_onInc);
    on<DecEvent>(_onDec);
  }

  _onInc(IncEvent event, Emitter<int> emit){
    emit(state + 1);
  }
  _onDec(DecEvent event, Emitter<int> emit){
    emit(state - 1);
  }
}


abstract class CounterEvents{}
class IncEvent extends CounterEvents{}
class DecEvent extends CounterEvents{}