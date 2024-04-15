import 'package:flutter_subway/data/data_source/subway_data_source.dart';
import 'package:flutter_subway/data/mapper/subway_mapper.dart';
import 'package:flutter_subway/data/model/realtime_arrival.dart';
import 'package:flutter_subway/data/repository/subway_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubwayDataSource _dataSource;

  SubwayRepositoryImpl({required SubwayDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<List<RealtimeArrival>> getRealtimeArrivalList(String key) async {
    List<RealtimeArrival> _result = [];
    final dto = await _dataSource.getSubwayResult(key);

    if (dto.realtimeArrivalDtos != null &&
        dto.realtimeArrivalDtos!.isNotEmpty) {
      _result =
          dto.realtimeArrivalDtos!.map((e) => e.toRealtimeArrival()).toList();
    }
    return _result;
  }
}
