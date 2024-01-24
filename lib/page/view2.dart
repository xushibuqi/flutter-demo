import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_animation/weather_animation.dart';
import 'cubit.dart';
import 'state.dart';


class BlCubitCounterPage2 extends StatelessWidget {
  const BlCubitCounterPage2({super.key, String? id, required Map<String, dynamic> data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BlCubitCounterCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<BlCubitCounterCubit>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Bloc-Cubit范例')),
      body: Center(
        child: BlocBuilder<BlCubitCounterCubit, BlCubitCounterState>(
          builder: (context, state) {
            return Text(
              '点击了 ${cubit.state.count} 次',
              style: TextStyle(fontSize: 30.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => cubit.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}


