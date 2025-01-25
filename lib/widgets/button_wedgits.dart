import 'dart:js_interop';

import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Buttonswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },
          child: Icon(Icons.add),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
          //  BlocProvider.of<CounterBloc>(context).add(ResetEvent());
            context.read<CounterBloc>().add(ResetEvent());
          },
          child: Icon(Icons.exposure_zero),
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
          },
          child: Icon(Icons.remove),
        )
      ],
    );
  }
}
