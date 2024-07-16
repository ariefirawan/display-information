import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/features/home/home.dart';

class DaftarHadir extends StatefulWidget {
  const DaftarHadir({
    super.key,
  });

  @override
  State<DaftarHadir> createState() => _DaftarHadirState();
}

class _DaftarHadirState extends State<DaftarHadir> {
  @override
  void initState() {
    super.initState();
    context.read<CalenderBloc>().add(GetCalenderEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalenderBloc, CalenderState>(
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              'DAFTAR HADIR',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.green,
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.calendar.length,
                itemBuilder: (context, idx) {
                  return Container(
                      height: 30,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Image.network(state.calendar[idx].foto),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.calendar[idx].nama,
                                  style: TextStyle(
                                    fontSize: !Responsive.isDesktop(context)
                                        ? 10
                                        : 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  state.calendar[idx].jabatan,
                                  style: TextStyle(
                                    fontSize:
                                        !Responsive.isDesktop(context) ? 8 : 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              state.calendar[idx].status,
                              softWrap: true,
                              style: TextStyle(
                                fontSize:
                                    !Responsive.isDesktop(context) ? 10 : 15,
                              ),
                            ),
                          ),
                        ],
                      ));
                })
          ],
        );
      },
    );
  }
}
