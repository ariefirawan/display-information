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
          Image.asset(
            MainAssets.toa,
            width: 125,
            height: 90,
          ),
          Image.asset(
            MainAssets.halal,
            width: 400,
            height: 88,
          ),
        ],
      ),
    );
  }
}
