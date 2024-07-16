import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/features/home/home.dart';

class PrayerTimeCountdown extends StatelessWidget {
  const PrayerTimeCountdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerBloc, PrayerState>(
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '- ${state.countdownText}',
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 18 : 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Waktu ${state.nextPrayerName}',
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 15 : 20,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
