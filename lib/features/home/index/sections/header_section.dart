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
            width: 85,
            height: 72,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Builder(builder: (context) {
              return const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'D I S P L A Y  I N F O R M A S I',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff006316)),
                  ),
                  Text(
                    'KANTOR KEMENTERIAN AGAMA KOTA TANJUNGPINANG',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Jl. Daeng Kamboja KM.24 Kel. Kp. Bugis, Kec. Tanjungpinang Kota',
                    style: TextStyle(
                      fontSize: 9,
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
