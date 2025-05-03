import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class InfoBox extends StatelessWidget {
  final String label;
  final String value;

  const InfoBox({required this.label, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        border: Border.all(color: AppColors.beige),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$label: $value',
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.offWhite,
        ),
      ),
    );
  }
}
