
import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/button_wedgits.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar :AppBar(

        title: const Text("Flutter Bloc"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value is :',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial){
                  return  Text(
                    '0',
                    style: TextStyle(color: Colors.blueGrey,fontSize: 30),
                  );
                }
                else if (state is CountValueChanged){
                  return  Text(
                    state.counter.toString(),
                    style: TextStyle(color: Colors.blueGrey,fontSize: 30),
                  );
                  return Container();
                } else return SizedBox();
              },
            ),


          ],
        ),
      ),
      floatingActionButton: Buttonswidget(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

