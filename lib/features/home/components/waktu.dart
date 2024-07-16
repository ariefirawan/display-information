import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:myapp/core/core.dart';

class Waktu extends StatefulWidget {
  const Waktu({super.key});

  @override
  State<Waktu> createState() => _WaktuState();
}

class _WaktuState extends State<Waktu> {
  DateTime _saatIni = DateTime.now();
  Timer _timer = Timer.periodic(const Duration(seconds: 1), (timer) {});

  String formattedDate = '';

  @override
  void initState() {
    initializeDateFormatting('id_ID', null).then((_) {
      setState(() {
        formattedDate =
            DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(DateTime.now());
      });
    });

    //ini waktu sekarang
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _saatIni = DateTime.now();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final waktu = DateFormat.Hms().format(_saatIni);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
      child: Column(
        children: [
          Text(
            '$waktu WIB',
            style: TextStyle(
              fontSize: Responsive.isMobile(context) ? 18 : 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            formattedDate,
            style: TextStyle(
              fontSize: Responsive.isMobile(context) ? 15 : 20,
            ),
          ),
        ],
      ),
    );
  }
}
