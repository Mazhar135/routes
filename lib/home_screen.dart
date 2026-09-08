import 'package:flutter/material.dart';
import 'package:routes/Screen_Two.dart';

class HomeScreen extends StatefulWidget {
  static const  String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue,
  centerTitle: true,
  title: Text(' Subscribe '),
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
  InkWell(
    onTap: (){
      Navigator.pushNamed(context,
          ScreenTwo.id,
        arguments: {
        'named' : 'Asif Taj',
          'age' : '25'
        }
          );
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context)=> ScreenTwo(
      //       name: 'Master Code',
      //       num: 12,
      //     ))
      // );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.green,
        ),

        child: Center(child: Text('Screen 1')),
      ),
    ),
  )
        ],
      ),

      );

  }
}
