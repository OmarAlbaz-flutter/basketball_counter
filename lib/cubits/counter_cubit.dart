import 'package:basketball_points_counter/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoints = 0;

  int teamBPoints = 0;

  teamIncreament({required String team, required int buttomNumber}) {
    if (team == 'A') {
      teamAPoints += buttomNumber;
      emit(CounterAIncreamentState());
    } else if (team == 'B') {
      teamBPoints += buttomNumber;
      emit(CounterBIncreamentState());
    }
  }

  teamCounterReset() {
    teamAPoints = teamBPoints = 0;
    emit(CounterResetState());
  }
}
