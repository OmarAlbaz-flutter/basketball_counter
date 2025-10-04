import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:basketball_points_counter/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballPointsCounter());
}

class BasketballPointsCounter extends StatelessWidget {
  const BasketballPointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
