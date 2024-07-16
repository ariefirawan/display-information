import 'package:flutter/material.dart';
import 'package:myapp/core/data/data.dart';

class IndicatorsWidget extends StatelessWidget {
  final bool? isSpak;
  const IndicatorsWidget({
    this.isSpak,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: isSpak == true
          ? ChartData.dataSpak
              .map(
                (data) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: buildIndicator(
                      color: data.color,
                      text: data.name,
                      isSquare: true,
                    )),
              )
              .toList()
          : ChartData.dataSpkp
              .map(
                (data) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: buildIndicator(
                      color: data.color,
                      text: data.name,
                      isSquare: true,
                    )),
              )
              .toList());

  Widget buildIndicator({
    required Color color,
    required String text,
    bool isSquare = false,
    double size = 10,
    Color textColor = const Color(0xff505050),
  }) =>
      Row(
        children: <Widget>[
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: color,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          )
        ],
      );
}
