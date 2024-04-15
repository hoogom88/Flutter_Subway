import 'package:flutter_subway/data/data_source/subway_data_source.dart';
import 'package:flutter_subway/data/model/realtime_arrival.dart';
import 'package:flutter_subway/data/repository/subway_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubwayDataSource dataSource;

  SubwayRepositoryImpl({required this.dataSource});

  @override
  Future<List<RealtimeArrival>> getRealtimeArrivalList(String key) {}
}
