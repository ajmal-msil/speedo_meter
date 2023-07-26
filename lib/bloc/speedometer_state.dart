part of 'speedometer_bloc.dart';

@immutable
abstract class SpeedometerState {}

class SpeedometerInitial extends SpeedometerState {}

class SpeedometerUpdated extends SpeedometerState {
  final int value;
  SpeedometerUpdated(this.value);
}
