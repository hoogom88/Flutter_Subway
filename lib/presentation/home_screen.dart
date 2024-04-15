import 'package:flutter/material.dart';
import 'package:flutter_subway/presentation/arrival_data_card.dart';
import 'package:flutter_subway/presentation/home_view_model.dart';
import 'package:flutter_subway/presentation/train_image.dart';

class HomeScreen extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomeScreen({super.key, required this.viewModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _trainWidth = 80.0;
  late HomeViewModel viewModel;
  final _searchTextEditController = TextEditingController();

  void _updateUI() => setState(() {});

  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(_updateUI);
    viewModel = widget.viewModel;
    viewModel.onSearch('서울');
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(_updateUI);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final HomeViewModel viewModel = widget.viewModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Subway Arrival Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchTextEditController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: '검색 역',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    viewModel.onSearch(_searchTextEditController.text);
                  },
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                      child: Text(
                    '상행',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    '하행',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
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
                    constraints: BoxConstraints.expand(),
                    color: Colors.amber,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: viewModel.upSubway
                            .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ArrivalDataCard(e),
                            )).toList(),
                      ),
                    ),
                  ),
                ),
                // Down
                Expanded(
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    color: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: viewModel.downSubway
                            .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ArrivalDataCard(e),
                            )).toList(),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: const Divider(
                  height: 100,
                  thickness: 10,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _trainWidth,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(
                        width: 5,
                        color: Colors.black,
                      )),
                  child: Center(
                      child: Text(
                    '${viewModel.station}역',
                    style: const TextStyle(fontSize: 15),
                  )),
                ),
              ),
              ... viewModel.upSubway.map((e) => TrainImageLeft(e, _trainWidth)),
              ... viewModel.downSubway.map((e) => TrainImageRight(e, _trainWidth)),
            ],
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 140),
        child: FloatingActionButton(
          onPressed: () {
            viewModel.onSearch(_searchTextEditController.text);
            _searchTextEditController.text = _searchTextEditController.text;
          },
          child: const Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
