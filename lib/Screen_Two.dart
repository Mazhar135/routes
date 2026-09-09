import 'package:flutter/material.dart';
import 'package:routes/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  final dynamic data;

  const ScreenTwo({super.key, required this.data});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    // Accessing data from widget.data
    String nodeValue = widget.data is Map ? widget.data['Node'] ?? 'No Data' : 'Invalid Data';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(nodeValue),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.ScreenThird);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    'Go to Screen 3',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
