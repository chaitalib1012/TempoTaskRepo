import 'package:flutter/material.dart';
import 'package:task_round_tempo_1/main.dart';

import 'home.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }


_navigatetohome() async {
  await Future.delayed(Duration(milliseconds: 3000), (){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Contacts')));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/Tempo.png')
        ),
      ),
    );
  }
}
