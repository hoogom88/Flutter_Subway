import 'package:flutter/material.dart';
import 'package:flutter_subway/data/model/realtime_arrival.dart';

import '../data/repository/subway_repository.dart';

class HomeViewModel with ChangeNotifier {
  final SubwayRepository _repository;

  HomeViewModel({required repository}) : _repository = repository;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  RealtimeArrival? _upSubway;
  RealtimeArrival? _downSubway;

  RealtimeArrival? get upSubway => _upSubway;

  RealtimeArrival? get downSubway => _downSubway;

  Future<void> onSearch(String key) async {
    changeLoadingStatus(true);

    List<RealtimeArrival> result =
        await _repository.getRealtimeArrivalList(key);

    final arrivals = result
      ..sort((old, now) => ((int.tryParse(now.barvlDt) ?? 0) -
          (int.tryParse(old.barvlDt) ?? 0)));

    _upSubway = arrivals.firstWhere((e) => e.updnLine == '상행');
    _downSubway = arrivals.firstWhere((e) => e.updnLine == '하행');

    changeLoadingStatus(false);
  }

  void changeLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
