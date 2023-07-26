// speedometer_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speedo_meter/bloc/speedometer_bloc.dart';
import 'package:speedo_meter/constants.dart';
import 'package:speedo_meter/widgets/speedometer_gauge.dart';

class SpeedometerPage extends StatefulWidget {
  @override
  State<SpeedometerPage> createState() => _SpeedometerPageState();
}

class _SpeedometerPageState extends State<SpeedometerPage> {
  String? enterValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.speedoMeterApp),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Center(child: BlocBuilder<SpeedometerBloc,SpeedometerState>(
              builder: (context,state) {
                if(state is SpeedometerUpdated){
                  enterValue = state.value.toString();
                }
                return SpeedometerGauge(value: enterValue??'0',);
              }
            ))),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      enterValue = value;
                    },
                    decoration: InputDecoration(
                      labelText:Constants.enterValue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        int userInput = int.tryParse(enterValue ?? '0') ?? 0;
                        BlocProvider.of<SpeedometerBloc>(context)
                            .add(SpeedometerValueChange(userInput));
                      },
                      child: Text(Constants.buttonText))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
