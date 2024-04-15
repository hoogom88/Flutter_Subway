import 'package:flutter/material.dart';
import 'package:flutter_subway/presentation/home_view_model.dart';

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
                    'Up',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'Down',
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
                    color: Colors.amber,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Visibility(
                      visible: viewModel.upSubway != null,
                      maintainAnimation: true,
                      maintainSize: true,
                      maintainState: true,
                      child: Column(
                        children: [
                          Text(
                            '${viewModel.upSubway?.trainLineNm}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          // trainLineNm (도착지방면)
                          Text(
                            '${viewModel.upSubway?.barvlDt}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          // barvlDt (열차도착예정시간)
                          Text(
                            '${viewModel.upSubway?.btrainSttus}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          // btrainSttus (열차종류)
                        ],
                      ),
                    ),
                  ),
                ),
                // Down
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Visibility(
                      visible: viewModel.downSubway != null,
                      maintainAnimation: true,
                      maintainSize: true,
                      maintainState: true,
                      child: Column(
                        children: [
                          Text(
                            '${viewModel.downSubway?.trainLineNm}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          // trainLineNm (도착지방면)
                          Text(
                            '${viewModel.downSubway?.barvlDt}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          // barvlDt (열차도착예정시간)
                          Text(
                            '${viewModel.downSubway?.btrainSttus}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ],
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
              const Divider(
                thickness: 10,
                color: Colors.grey,
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width / 2) -
                    ((int.tryParse(viewModel.upSubway?.barvlDt ?? '0')) ??
                        0 / 180) -
                    _trainWidth -
                    _trainWidth / 2,
                child: Visibility(
                  visible: viewModel.upSubway != null,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: Image.asset(
                    'assets/train_left.png',
                    width: _trainWidth,
                    height: _trainWidth,
                  ),
                ),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width / 2) +
                    ((int.tryParse(viewModel.upSubway?.barvlDt ?? '0')) ??
                        0 / 180),
                child: Visibility(
                  visible: viewModel.downSubway != null,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: Image.asset(
                    'assets/train_right.png',
                    width: _trainWidth,
                    height: _trainWidth,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _trainWidth,
                  height: _trainWidth,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        width: 5,
                        color: Colors.red,
                      )),
                  child: Center(
                      child: Text(
                    '${viewModel.station}역',
                    style: const TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 96),
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
