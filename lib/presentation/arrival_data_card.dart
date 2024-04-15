import 'package:flutter/material.dart';
import 'package:flutter_subway/data/model/realtime_arrival.dart';

class ArrivalDataCard extends StatelessWidget {
  final RealtimeArrival data;

  ArrivalDataCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${data.trainLineNm}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        // trainLineNm (도착지방면)
        Text(
          '${(int.tryParse(data.barvlDt) ?? 0) ~/ 60} 분 뒤 도착',
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        // barvlDt (열차도착예정시간)
        Text(
          '${data.btrainSttus} 열차',
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
