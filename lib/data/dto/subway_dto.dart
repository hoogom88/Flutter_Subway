class SubwayDto {
  ErrorMessageDto? errorMessageDto;
  List<RealtimeArrivalDto>? realtimeArrivalDtos;

  SubwayDto({
    this.errorMessageDto,
    this.realtimeArrivalDtos,
  });

  SubwayDto.fromJson(dynamic json) {
    errorMessageDto = json['errorMessage'] != null
        ? ErrorMessageDto.fromJson(json['errorMessage'])
        : null;
    if (json['realtimeArrivalDtos'] != null) {
      realtimeArrivalDtos = [];
      json['realtimeArrivalDtos'].forEach((v) {
        realtimeArrivalDtos?.add(RealtimeArrivalDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (errorMessageDto != null) {
      map['errorMessage'] = errorMessageDto?.toJson();
    }
    if (realtimeArrivalDtos != null) {
      map['realtimeArrivalDtos'] =
          realtimeArrivalDtos?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class RealtimeArrivalDto {
  dynamic beginRow;
  dynamic endRow;
  dynamic curPage;
  dynamic pageRow;
  num? totalCount;
  num? rowNum;
  num? selectedCount;
  String? subwayId;
  dynamic subwayNm;
  String? updnLine;
  String? trainLineNm;
  dynamic subwayHeading;
  String? statnFid;
  String? statnTid;
  String? statnId;
  String? statnNm;
  dynamic trainCo;
  String? trnsitCo;
  String? ordkey;
  String? subwayList;
  String? statnList;
  String? btrainSttus;
  String? barvlDt;
  String? btrainNo;
  String? bstatnId;
  String? bstatnNm;
  String? recptnDt;
  String? arvlMsg2;
  String? arvlMsg3;
  String? arvlCd;

  RealtimeArrivalDto({
    this.beginRow,
    this.endRow,
    this.curPage,
    this.pageRow,
    this.totalCount,
    this.rowNum,
    this.selectedCount,
    this.subwayId,
    this.subwayNm,
    this.updnLine,
    this.trainLineNm,
    this.subwayHeading,
    this.statnFid,
    this.statnTid,
    this.statnId,
    this.statnNm,
    this.trainCo,
    this.trnsitCo,
    this.ordkey,
    this.subwayList,
    this.statnList,
    this.btrainSttus,
    this.barvlDt,
    this.btrainNo,
    this.bstatnId,
    this.bstatnNm,
    this.recptnDt,
    this.arvlMsg2,
    this.arvlMsg3,
    this.arvlCd,
  });

  RealtimeArrivalDto.fromJson(dynamic json) {
    beginRow = json['beginRow'];
    endRow = json['endRow'];
    curPage = json['curPage'];
    pageRow = json['pageRow'];
    totalCount = json['totalCount'];
    rowNum = json['rowNum'];
    selectedCount = json['selectedCount'];
    subwayId = json['subwayId'];
    subwayNm = json['subwayNm'];
    updnLine = json['updnLine'];
    trainLineNm = json['trainLineNm'];
    subwayHeading = json['subwayHeading'];
    statnFid = json['statnFid'];
    statnTid = json['statnTid'];
    statnId = json['statnId'];
    statnNm = json['statnNm'];
    trainCo = json['trainCo'];
    trnsitCo = json['trnsitCo'];
    ordkey = json['ordkey'];
    subwayList = json['subwayList'];
    statnList = json['statnList'];
    btrainSttus = json['btrainSttus'];
    barvlDt = json['barvlDt'];
    btrainNo = json['btrainNo'];
    bstatnId = json['bstatnId'];
    bstatnNm = json['bstatnNm'];
    recptnDt = json['recptnDt'];
    arvlMsg2 = json['arvlMsg2'];
    arvlMsg3 = json['arvlMsg3'];
    arvlCd = json['arvlCd'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['beginRow'] = beginRow;
    map['endRow'] = endRow;
    map['curPage'] = curPage;
    map['pageRow'] = pageRow;
    map['totalCount'] = totalCount;
    map['rowNum'] = rowNum;
    map['selectedCount'] = selectedCount;
    map['subwayId'] = subwayId;
    map['subwayNm'] = subwayNm;
    map['updnLine'] = updnLine;
    map['trainLineNm'] = trainLineNm;
    map['subwayHeading'] = subwayHeading;
    map['statnFid'] = statnFid;
    map['statnTid'] = statnTid;
    map['statnId'] = statnId;
    map['statnNm'] = statnNm;
    map['trainCo'] = trainCo;
    map['trnsitCo'] = trnsitCo;
    map['ordkey'] = ordkey;
    map['subwayList'] = subwayList;
    map['statnList'] = statnList;
    map['btrainSttus'] = btrainSttus;
    map['barvlDt'] = barvlDt;
    map['btrainNo'] = btrainNo;
    map['bstatnId'] = bstatnId;
    map['bstatnNm'] = bstatnNm;
    map['recptnDt'] = recptnDt;
    map['arvlMsg2'] = arvlMsg2;
    map['arvlMsg3'] = arvlMsg3;
    map['arvlCd'] = arvlCd;
    return map;
  }
}

class ErrorMessageDto {
  ErrorMessageDto({
    this.status,
    this.code,
    this.message,
    this.link,
    this.developerMessage,
    this.total,
  });

  ErrorMessageDto.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    link = json['link'];
    developerMessage = json['developerMessage'];
    total = json['total'];
  }

  num? status;
  String? code;
  String? message;
  String? link;
  String? developerMessage;
  num? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['code'] = code;
    map['message'] = message;
    map['link'] = link;
    map['developerMessage'] = developerMessage;
    map['total'] = total;
    return map;
  }
}
