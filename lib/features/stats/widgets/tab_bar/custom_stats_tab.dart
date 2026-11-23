import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';

class CustomStatsTab extends StatelessWidget {
  final String title;
  final IconData icon;
  const new({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.secondaryText),
          const SizedBox(width: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.368,
              height: 20 / 16,
            ),
          ),
        ],
      ),
    );
  }
}
