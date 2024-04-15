import 'dart:convert';

import '../dto/subway_dto.dart';
import 'package:http/http.dart' as http;

class SubwayDataSource{
  final _baseUri =
      'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5';

  Future<SubwayDto> getSubwayResult(String key) async {
    final response = await http.get(Uri.parse('$_baseUri/$key'));

    return SubwayDto.fromJson(jsonDecode(response.body));
  }
}
