import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/home/home.dart';
import 'package:myapp/models/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PrayerBloc(
            prayerTimesManager: PrayerTimesManager(
              coordinates: Coordinates(0.9252542778456163, 104.49962031190583),
              params: CalculationMethod.muslim_world_league.getParameters(),
            ),
          )..add(InitializePrayerTimes()),
        ),
        BlocProvider(create: (context) => CalenderBloc()),
      ],
      child: MaterialApp(
        title: 'Display Informasi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
