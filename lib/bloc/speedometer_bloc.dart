import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'speedometer_event.dart';
part 'speedometer_state.dart';

class SpeedometerBloc extends Bloc<SpeedometerEvent, SpeedometerState> {
  SpeedometerBloc() : super(SpeedometerInitial()) {
    on<SpeedometerEvent>((event, emit) {
      if (event is SpeedometerValueChange) {
        emit(SpeedometerUpdated(event.value));
      }
    });
  }
}
