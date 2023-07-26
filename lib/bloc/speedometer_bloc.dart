import 'package:flutter_bloc/flutter_bloc.dart';
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
