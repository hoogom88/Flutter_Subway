// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realtime_arrival.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealtimeArrival _$RealtimeArrivalFromJson(Map<String, dynamic> json) {
  return _RealtimeArrival.fromJson(json);
}

/// @nodoc
mixin _$RealtimeArrival {
  String get subwayId => throw _privateConstructorUsedError; // 지하철호선ID
  String get updnLine => throw _privateConstructorUsedError; // 상하행선구분
  String get trainLineNm => throw _privateConstructorUsedError; // 도착지방면
  String get statnNm => throw _privateConstructorUsedError; // 지하철역명
  String get btrainSttus => throw _privateConstructorUsedError; // 열차종류
  String get barvlDt => throw _privateConstructorUsedError; // 열차도착예정시간
  String get btrainNo => throw _privateConstructorUsedError; // 열차번호
  String get bstatnNm => throw _privateConstructorUsedError; // 종착지하철역명
  String get recptnDt => throw _privateConstructorUsedError; // 열차도착정보를 생성한 시각
  String get arvlMsg2 => throw _privateConstructorUsedError; // 첫번째도착메세지
  String get arvlMsg3 => throw _privateConstructorUsedError; // 두번째도착메세지
  String get arvlCd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealtimeArrivalCopyWith<RealtimeArrival> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeArrivalCopyWith<$Res> {
  factory $RealtimeArrivalCopyWith(
          RealtimeArrival value, $Res Function(RealtimeArrival) then) =
      _$RealtimeArrivalCopyWithImpl<$Res, RealtimeArrival>;
  @useResult
  $Res call(
      {String subwayId,
      String updnLine,
      String trainLineNm,
      String statnNm,
      String btrainSttus,
      String barvlDt,
      String btrainNo,
      String bstatnNm,
      String recptnDt,
      String arvlMsg2,
      String arvlMsg3,
      String arvlCd});
}

/// @nodoc
class _$RealtimeArrivalCopyWithImpl<$Res, $Val extends RealtimeArrival>
    implements $RealtimeArrivalCopyWith<$Res> {
  _$RealtimeArrivalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subwayId = null,
    Object? updnLine = null,
    Object? trainLineNm = null,
    Object? statnNm = null,
    Object? btrainSttus = null,
    Object? barvlDt = null,
    Object? btrainNo = null,
    Object? bstatnNm = null,
    Object? recptnDt = null,
    Object? arvlMsg2 = null,
    Object? arvlMsg3 = null,
    Object? arvlCd = null,
  }) {
    return _then(_value.copyWith(
      subwayId: null == subwayId
          ? _value.subwayId
          : subwayId // ignore: cast_nullable_to_non_nullable
              as String,
      updnLine: null == updnLine
          ? _value.updnLine
          : updnLine // ignore: cast_nullable_to_non_nullable
              as String,
      trainLineNm: null == trainLineNm
          ? _value.trainLineNm
          : trainLineNm // ignore: cast_nullable_to_non_nullable
              as String,
      statnNm: null == statnNm
          ? _value.statnNm
          : statnNm // ignore: cast_nullable_to_non_nullable
              as String,
      btrainSttus: null == btrainSttus
          ? _value.btrainSttus
          : btrainSttus // ignore: cast_nullable_to_non_nullable
              as String,
      barvlDt: null == barvlDt
          ? _value.barvlDt
          : barvlDt // ignore: cast_nullable_to_non_nullable
              as String,
      btrainNo: null == btrainNo
          ? _value.btrainNo
          : btrainNo // ignore: cast_nullable_to_non_nullable
              as String,
      bstatnNm: null == bstatnNm
          ? _value.bstatnNm
          : bstatnNm // ignore: cast_nullable_to_non_nullable
              as String,
      recptnDt: null == recptnDt
          ? _value.recptnDt
          : recptnDt // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg2: null == arvlMsg2
          ? _value.arvlMsg2
          : arvlMsg2 // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg3: null == arvlMsg3
          ? _value.arvlMsg3
          : arvlMsg3 // ignore: cast_nullable_to_non_nullable
              as String,
      arvlCd: null == arvlCd
          ? _value.arvlCd
          : arvlCd // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealtimeArrivalImplCopyWith<$Res>
    implements $RealtimeArrivalCopyWith<$Res> {
  factory _$$RealtimeArrivalImplCopyWith(_$RealtimeArrivalImpl value,
          $Res Function(_$RealtimeArrivalImpl) then) =
      __$$RealtimeArrivalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subwayId,
      String updnLine,
      String trainLineNm,
      String statnNm,
      String btrainSttus,
      String barvlDt,
      String btrainNo,
      String bstatnNm,
      String recptnDt,
      String arvlMsg2,
      String arvlMsg3,
      String arvlCd});
}

/// @nodoc
class __$$RealtimeArrivalImplCopyWithImpl<$Res>
    extends _$RealtimeArrivalCopyWithImpl<$Res, _$RealtimeArrivalImpl>
    implements _$$RealtimeArrivalImplCopyWith<$Res> {
  __$$RealtimeArrivalImplCopyWithImpl(
      _$RealtimeArrivalImpl _value, $Res Function(_$RealtimeArrivalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subwayId = null,
    Object? updnLine = null,
    Object? trainLineNm = null,
    Object? statnNm = null,
    Object? btrainSttus = null,
    Object? barvlDt = null,
    Object? btrainNo = null,
    Object? bstatnNm = null,
    Object? recptnDt = null,
    Object? arvlMsg2 = null,
    Object? arvlMsg3 = null,
    Object? arvlCd = null,
  }) {
    return _then(_$RealtimeArrivalImpl(
      subwayId: null == subwayId
          ? _value.subwayId
          : subwayId // ignore: cast_nullable_to_non_nullable
              as String,
      updnLine: null == updnLine
          ? _value.updnLine
          : updnLine // ignore: cast_nullable_to_non_nullable
              as String,
      trainLineNm: null == trainLineNm
          ? _value.trainLineNm
          : trainLineNm // ignore: cast_nullable_to_non_nullable
              as String,
      statnNm: null == statnNm
          ? _value.statnNm
          : statnNm // ignore: cast_nullable_to_non_nullable
              as String,
      btrainSttus: null == btrainSttus
          ? _value.btrainSttus
          : btrainSttus // ignore: cast_nullable_to_non_nullable
              as String,
      barvlDt: null == barvlDt
          ? _value.barvlDt
          : barvlDt // ignore: cast_nullable_to_non_nullable
              as String,
      btrainNo: null == btrainNo
          ? _value.btrainNo
          : btrainNo // ignore: cast_nullable_to_non_nullable
              as String,
      bstatnNm: null == bstatnNm
          ? _value.bstatnNm
          : bstatnNm // ignore: cast_nullable_to_non_nullable
              as String,
      recptnDt: null == recptnDt
          ? _value.recptnDt
          : recptnDt // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg2: null == arvlMsg2
          ? _value.arvlMsg2
          : arvlMsg2 // ignore: cast_nullable_to_non_nullable
              as String,
      arvlMsg3: null == arvlMsg3
          ? _value.arvlMsg3
          : arvlMsg3 // ignore: cast_nullable_to_non_nullable
              as String,
      arvlCd: null == arvlCd
          ? _value.arvlCd
          : arvlCd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealtimeArrivalImpl implements _RealtimeArrival {
  const _$RealtimeArrivalImpl(
      {required this.subwayId,
      required this.updnLine,
      required this.trainLineNm,
      required this.statnNm,
      required this.btrainSttus,
      required this.barvlDt,
      required this.btrainNo,
      required this.bstatnNm,
      required this.recptnDt,
      required this.arvlMsg2,
      required this.arvlMsg3,
      required this.arvlCd});

  factory _$RealtimeArrivalImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealtimeArrivalImplFromJson(json);

  @override
  final String subwayId;
// 지하철호선ID
  @override
  final String updnLine;
// 상하행선구분
  @override
  final String trainLineNm;
// 도착지방면
  @override
  final String statnNm;
// 지하철역명
  @override
  final String btrainSttus;
// 열차종류
  @override
  final String barvlDt;
// 열차도착예정시간
  @override
  final String btrainNo;
// 열차번호
  @override
  final String bstatnNm;
// 종착지하철역명
  @override
  final String recptnDt;
// 열차도착정보를 생성한 시각
  @override
  final String arvlMsg2;
// 첫번째도착메세지
  @override
  final String arvlMsg3;
// 두번째도착메세지
  @override
  final String arvlCd;

  @override
  String toString() {
    return 'RealtimeArrival(subwayId: $subwayId, updnLine: $updnLine, trainLineNm: $trainLineNm, statnNm: $statnNm, btrainSttus: $btrainSttus, barvlDt: $barvlDt, btrainNo: $btrainNo, bstatnNm: $bstatnNm, recptnDt: $recptnDt, arvlMsg2: $arvlMsg2, arvlMsg3: $arvlMsg3, arvlCd: $arvlCd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealtimeArrivalImpl &&
            (identical(other.subwayId, subwayId) ||
                other.subwayId == subwayId) &&
            (identical(other.updnLine, updnLine) ||
                other.updnLine == updnLine) &&
            (identical(other.trainLineNm, trainLineNm) ||
                other.trainLineNm == trainLineNm) &&
            (identical(other.statnNm, statnNm) || other.statnNm == statnNm) &&
            (identical(other.btrainSttus, btrainSttus) ||
                other.btrainSttus == btrainSttus) &&
            (identical(other.barvlDt, barvlDt) || other.barvlDt == barvlDt) &&
            (identical(other.btrainNo, btrainNo) ||
                other.btrainNo == btrainNo) &&
            (identical(other.bstatnNm, bstatnNm) ||
                other.bstatnNm == bstatnNm) &&
            (identical(other.recptnDt, recptnDt) ||
                other.recptnDt == recptnDt) &&
            (identical(other.arvlMsg2, arvlMsg2) ||
                other.arvlMsg2 == arvlMsg2) &&
            (identical(other.arvlMsg3, arvlMsg3) ||
                other.arvlMsg3 == arvlMsg3) &&
            (identical(other.arvlCd, arvlCd) || other.arvlCd == arvlCd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subwayId,
      updnLine,
      trainLineNm,
      statnNm,
      btrainSttus,
      barvlDt,
      btrainNo,
      bstatnNm,
      recptnDt,
      arvlMsg2,
      arvlMsg3,
      arvlCd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RealtimeArrivalImplCopyWith<_$RealtimeArrivalImpl> get copyWith =>
      __$$RealtimeArrivalImplCopyWithImpl<_$RealtimeArrivalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealtimeArrivalImplToJson(
      this,
    );
  }
}

abstract class _RealtimeArrival implements RealtimeArrival {
  const factory _RealtimeArrival(
      {required final String subwayId,
      required final String updnLine,
      required final String trainLineNm,
      required final String statnNm,
      required final String btrainSttus,
      required final String barvlDt,
      required final String btrainNo,
      required final String bstatnNm,
      required final String recptnDt,
      required final String arvlMsg2,
      required final String arvlMsg3,
      required final String arvlCd}) = _$RealtimeArrivalImpl;

  factory _RealtimeArrival.fromJson(Map<String, dynamic> json) =
      _$RealtimeArrivalImpl.fromJson;

  @override
  String get subwayId;
  @override // 지하철호선ID
  String get updnLine;
  @override // 상하행선구분
  String get trainLineNm;
  @override // 도착지방면
  String get statnNm;
  @override // 지하철역명
  String get btrainSttus;
  @override // 열차종류
  String get barvlDt;
  @override // 열차도착예정시간
  String get btrainNo;
  @override // 열차번호
  String get bstatnNm;
  @override // 종착지하철역명
  String get recptnDt;
  @override // 열차도착정보를 생성한 시각
  String get arvlMsg2;
  @override // 첫번째도착메세지
  String get arvlMsg3;
  @override // 두번째도착메세지
  String get arvlCd;
  @override
  @JsonKey(ignore: true)
  _$$RealtimeArrivalImplCopyWith<_$RealtimeArrivalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
