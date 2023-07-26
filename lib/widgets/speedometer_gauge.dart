import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speedo_meter/bloc/speedometer_bloc.dart';
import 'package:speedo_meter/utils/meter_readings.dart';
import 'package:speedo_meter/utils/speedometer_gauge_painter.dart';
import 'package:speedo_meter/widgets/needle.dart';

class SpeedometerGauge extends StatefulWidget {
  final String value;
  SpeedometerGauge({super.key,required this.value});

  @override
  State<SpeedometerGauge> createState() => _SpeedometerGaugeState();
}

class _SpeedometerGaugeState extends State<SpeedometerGauge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          CustomPaint(
            size: const Size(300, 300),
            painter: SpeedometerGaugePainter(
                value: int.tryParse(widget.value) ?? 0),foregroundPainter: MeterReadings()
          ),
        ],
      ),
    );
  }


}