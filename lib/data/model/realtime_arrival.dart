import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime_arrival.freezed.dart';

part 'realtime_arrival.g.dart';

@freezed
class RealtimeArrival with _$RealtimeArrival {
  const factory RealtimeArrival({
    required String subwayId, // 지하철호선ID
    required String updnLine, // 상하행선구분
    required String trainLineNm, // 도착지방면
    required String statnNm, // 지하철역명
    required String btrainSttus, // 열차종류
    required String barvlDt, // 열차도착예정시간
    required String btrainNo, // 열차번호
    required String bstatnNm, // 종착지하철역명
    required String recptnDt, // 열차도착정보를 생성한 시각
    required String arvlMsg2, // 첫번째도착메세지
    required String arvlMsg3, // 두번째도착메세지
    required String arvlCd, // 도착코드
  }) = _RealtimeArrival;

  factory RealtimeArrival.fromJson(Map<String, Object?> json) => _$RealtimeArrivalFromJson(json);
}

// dart run build_runner build --delete-conflicting-outputs

