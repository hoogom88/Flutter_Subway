import 'package:flutter/material.dart';

import '../data/model/realtime_arrival.dart';

class TrainImageLeft extends StatelessWidget {
  final RealtimeArrival data;

  final double _trainWidth;

  TrainImageLeft(this.data, trainWidth) : _trainWidth = trainWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: (MediaQuery
          .of(context)
          .size
          .width / 2) -
          (((int.tryParse(data.barvlDt)) ?? 0) / 5) -
          _trainWidth -
          _trainWidth / 2 +
          14,
      child: Image.asset(
        'assets/train_left.png',
        width: _trainWidth,
        height: _trainWidth / 1.5,
      ),
    );
  }
}

class TrainImageRight extends StatelessWidget {
  final RealtimeArrival data;

  final double _trainWidth;

  TrainImageRight(this.data, trainWidth) : _trainWidth = trainWidth;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: (MediaQuery
          .of(context)
          .size
          .width / 2) +
          (((int.tryParse(data.barvlDt)) ??
              0) / 5) +
          _trainWidth / 2 - 14,
      child: Image.asset(
        'assets/train_right.png',
        width: _trainWidth,
        height: _trainWidth / 1.5,
      ),
    );
  }
}
