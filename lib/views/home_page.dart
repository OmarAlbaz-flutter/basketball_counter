import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:basketball_points_counter/cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              "Points Counter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Team A",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                            style: TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncreament(team: 'A', buttomNumber: 1);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add 1 Point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncreament(team: 'A', buttomNumber: 2);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add 2 Point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncreament(team: 'A', buttomNumber: 3);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add 3 Point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Team B",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                            style: TextStyle(
                              fontSize: 150,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncreament(team: 'B', buttomNumber: 1);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add 1 Point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncreament(team: 'B', buttomNumber: 2);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add 2 Point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncreament(team: 'B', buttomNumber: 3);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add 3 Point",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).teamCounterReset();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(4),
                    ),
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
