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

  List<RealtimeArrival> _upSubway = [];
  List<RealtimeArrival> _downSubway = [];

  List<RealtimeArrival> get upSubway => _upSubway;

  List<RealtimeArrival> get downSubway => _downSubway;

  Future<void> onSearch(String key) async {
    _station = key;
    changeLoadingStatus(true);

    List<RealtimeArrival> result =
        await _repository.getRealtimeArrivalList(key);

    final arrivals = result
      ..sort((now, old) => ((int.tryParse(now.barvlDt) ?? 0) -
          (int.tryParse(old.barvlDt) ?? 0)));

    _upSubway = arrivals.where((e) => e.updnLine == '상행').take(3).toList();
    _downSubway = arrivals.where((e) => e.updnLine == '하행').take(3).toList();
    print(_upSubway);
    print(_downSubway);

    changeLoadingStatus(false);
  }

  void changeLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
