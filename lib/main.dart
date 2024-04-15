import 'package:flutter/material.dart';
import 'package:flutter_subway/data/data_source/subway_data_source.dart';
import 'package:flutter_subway/presentation/home_screen.dart';
import 'package:flutter_subway/presentation/home_view_model.dart';

import 'data/repository/subway_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(
        viewModel: HomeViewModel(
            repository: SubwayRepositoryImpl(dataSource: SubwayDataSource())),
      ),
    );
  }
}
