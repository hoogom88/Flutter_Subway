import 'package:flutter_subway/data/model/realtime_arrival.dart';

abstract interface class SubwayRepository {
  Future<List<RealtimeArrival>> getRealtimeArrivalList(String key);
}
