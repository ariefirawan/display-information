import 'package:adhan/adhan.dart';

class PrayerTimesManager {
  final Coordinates coordinates;
  final CalculationParameters params;

  PrayerTimesManager({required this.coordinates, required this.params});

  NextPrayerTime getNextPrayerTime() {
    final prayerTimes = PrayerTimes.today(coordinates, params);
    final now = DateTime.now();

    return _getNextPrayer(prayerTimes, now);
  }

  NextPrayerTime _getNextPrayer(PrayerTimes prayerTimes, DateTime now) {
    if (now.isBefore(prayerTimes.fajr)) {
      return NextPrayerTime(prayerTimes.fajr, "Subuh");
    } else if (now.isBefore(prayerTimes.dhuhr)) {
      return NextPrayerTime(prayerTimes.dhuhr, "Dzuhur");
    } else if (now.isBefore(prayerTimes.asr)) {
      return NextPrayerTime(prayerTimes.asr, "Ashar");
    } else if (now.isBefore(prayerTimes.maghrib)) {
      return NextPrayerTime(prayerTimes.maghrib, "Maghrib");
    } else if (now.isBefore(prayerTimes.isha)) {
      return NextPrayerTime(prayerTimes.isha, "Isya");
    } else {
      // Jika sekarang sudah melewati semua waktu sholat hari ini, ambil waktu Fajr besok
      final tomorrowPrayerTimes = PrayerTimes(
        coordinates,
        DateComponents.from(DateTime.now().add(const Duration(days: 1))),
        params,
      );
      return NextPrayerTime(tomorrowPrayerTimes.fajr, "Subuh");
    }
  }

  String formatDuration(Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }
}

class NextPrayerTime {
  final DateTime time;
  final String name;

  NextPrayerTime(this.time, this.name);
}
