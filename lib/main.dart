import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speedo_meter/bloc/speedometer_bloc.dart';
import 'package:speedo_meter/ui/speedoMeterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => SpeedometerBloc(),
        child: const SpeedometerPage(),
      ),
    );
  }
}

