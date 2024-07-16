import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/features/home/home.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part '../sections/iklan_section.dart';
part '../sections/player_section.dart';

class LeftScreen extends StatelessWidget {
  const LeftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Waktu(),
              SizedBox(width: 80),
              PrayerTimeCountdown(),
            ],
          ),
          Divider(thickness: 2),
          _PlayerSection(),
          SizedBox(height: 3),
          _IklanSection(),
        ],
      ),
    );
  }
}
