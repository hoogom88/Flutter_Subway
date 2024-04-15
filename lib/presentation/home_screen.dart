import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subway Arrival Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text('XX'),
                        Text('XX'),
                        Text('XX'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text('OO'),
                        Text('OO'),
                        Text('OO'),
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
