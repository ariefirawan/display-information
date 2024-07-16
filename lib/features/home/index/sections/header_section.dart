part of '../screens/right_screen.dart';

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            MainAssets.logo,
            width: !Responsive.isDesktop(context) ? 55 : 85,
            height: !Responsive.isDesktop(context) ? 42 : 72,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Builder(builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'D I S P L A Y  I N F O R M A S I',
                    style: TextStyle(
                        fontSize: !Responsive.isDesktop(context) ? 16 : 25,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff006316)),
                  ),
                  Text(
                    'KANTOR KEMENTERIAN AGAMA KOTA TANJUNGPINANG',
                    style: TextStyle(
                      fontSize: !Responsive.isDesktop(context) ? 8 : 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Jl. Daeng Kamboja KM.24 Kel. Kp. Bugis, Kec. Tanjungpinang Kota',
                    style: TextStyle(
                      fontSize: !Responsive.isDesktop(context) ? 7 : 12,
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
