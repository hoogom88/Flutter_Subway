import 'package:flutter/material.dart';
import 'package:flutter_subway/presentation/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomeScreen({super.key, required this.viewModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late HomeViewModel viewModel;

  void _updateUI() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(_updateUI);
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(_updateUI);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = widget.viewModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Subway Arrival Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Center(child: Text('Up')),
                ),
                Expanded(
                  child: Center(child: Text('Down')),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Up
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        // Text('XX'), // trainLineNm (도착지방면)
                        // Text('XX'), // barvlDt (열차도착예정시간)
                        // Text('XX'), // btrainSttus (열차종류)
                        Text('${viewModel.upSubway!.trainLineNm}'),
                        // trainLineNm (도착지방면)
                        Text('${viewModel.upSubway!.barvlDt}'),
                        // barvlDt (열차도착예정시간)
                        Text('${viewModel.upSubway!.btrainSttus}'),
                        // btrainSttus (열차종류)
                      ],
                    ),
                  ),
                ),
                // Down
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        // Text('OO'), // trainLineNm (도착지방면)
                        // Text('OO'), // barvlDt (열차도착예정시간)
                        // Text('OO'), // btrainSttus (열차종류)
                        Text('${viewModel.downSubway!.trainLineNm}'),
                        // trainLineNm (도착지방면)
                        Text('${viewModel.downSubway!.barvlDt}'),
                        // barvlDt (열차도착예정시간)
                        Text('${viewModel.downSubway!.btrainSttus}'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: [],
          )
        ],
      ),
    );
  }
}
