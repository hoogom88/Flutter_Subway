import 'package:flutter/material.dart';
import 'package:flutter_subway/data/model/realtime_arrival.dart';

import '../data/repository/subway_repository.dart';

class HomeViewModel with ChangeNotifier {
  final SubwayRepository _repository;

  HomeViewModel({required repository}) : _repository = repository;

  String _station = '';

  String get station => _station;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  RealtimeArrival? _upSubway;
  RealtimeArrival? _downSubway;

  RealtimeArrival? get upSubway => _upSubway;

  RealtimeArrival? get downSubway => _downSubway;

  Future<void> onSearch(String key) async {
    _station = key;
    changeLoadingStatus(true);

    List<RealtimeArrival> result =
        await _repository.getRealtimeArrivalList(key);

    final arrivals = result
      ..sort((now, old) => ((int.tryParse(now.barvlDt) ?? 0) -
          (int.tryParse(old.barvlDt) ?? 0)));

    _upSubway = arrivals.any((e) => e.updnLine == '상행')
        ? arrivals.firstWhere((e) => e.updnLine == '상행')
        : null;
    _downSubway = arrivals.any((e) => e.updnLine == '하행')
        ? arrivals.firstWhere((e) => e.updnLine == '하행')
        : null;
    print(_upSubway);
    print(_downSubway);

    changeLoadingStatus(false);
  }

  void changeLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
