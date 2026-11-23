import 'package:material_ui/material_ui.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  const new({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.filterButton,
        side: const BorderSide(color: AppColors.filterButtonBorder, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        minimumSize: const Size(166, 40),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.statsIcon, size: 18),
          const SizedBox(width: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.216,
              height: 18 / 14,
            ),
          ),
          const SizedBox(width: 3),
          const Icon(
            CupertinoIcons.chevron_down,
            color: AppColors.statsIcon,
            size: 14,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
