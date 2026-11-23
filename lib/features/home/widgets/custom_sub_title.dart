import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';

class CustomSubTitle extends StatelessWidget {
  final String titleName;
  const CustomSubTitle({super.key, required this.titleName});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleName,
      style: const TextStyle(
        color: AppColors.primaryText,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 22 / 20,
      ),
    );
  }
}
