part of '../screens/left_screen.dart';

class _IklanSection extends StatelessWidget {
  const _IklanSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            child: Text(
              'Ayo Daftarkan Produk Halal Anda',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.green),
            ),
          ),
          Image.asset(
            MainAssets.toa,
            width: 225,
            height: 190,
          ),
          Image.asset(
            MainAssets.halal,
            width: 500,
            height: 188,
          ),
        ],
      ),
    );
  }
}
