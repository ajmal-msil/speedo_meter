part of 'speedometer_bloc.dart';

@immutable
abstract class SpeedometerEvent {}

class SpeedometerValueChange extends SpeedometerEvent {
  final int value;
  SpeedometerValueChange(this.value);
}
