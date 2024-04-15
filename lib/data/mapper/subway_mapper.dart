import 'package:flutter_subway/data/dto/subway_dto.dart';

import '../model/realtime_arrival.dart';

extension ToRealtimeArrival on RealtimeArrivalDto {
  RealtimeArrival toRealtimeArrival() {
    return RealtimeArrival(
      subwayId: subwayId ?? '',
      updnLine: updnLine ?? '',
      trainLineNm: trainLineNm ?? '',
      statnNm: statnNm ?? '',
      btrainSttus: btrainSttus ?? '',
      barvlDt: barvlDt ?? '',
      btrainNo: btrainNo ?? '',
      bstatnNm: bstatnNm ?? '',
      recptnDt: recptnDt ?? '',
      arvlMsg2: arvlMsg2 ?? '',
      arvlMsg3: arvlMsg3 ?? '',
      arvlCd: arvlCd ?? '',
    );
  }
}
