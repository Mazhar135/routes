import 'package:flutter/material.dart';
import 'package:routes/screen_three.dart';


class ScreenTwo extends StatefulWidget {

  static const String id = 'Screen_Two';


  const ScreenTwo({super.key,

  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map? ?? {};

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(arguments.toString())
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (cotext)=> ScreenThree(
                name: 'Master',
                number: 25,
              )));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.green,
                ),

                child: Center(child: Text('Screen 2')),
              ),
            ),
          )
        ],
      ),

    );
  }
}
